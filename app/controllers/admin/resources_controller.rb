class Admin::ResourcesController < Admin::BaseController
  # generic controller for model admin manipulation
  before_action :load_resource, only: [:show, :edit, :update, :destroy]

  def new
    @resource = resource_class.new.decorate
    authorize @resource
  end

  def create
    @resource = resource_class.new(resource_params)
    authorize @resource

    if @resource.save
      redirect_to admin_resource_path
    else
      @resource = @resource.decorate
      render :new
    end
  end

  def index
    @resources = paginate resource_class.all
    @resource_class = resource_class
  end

  def show
  end

  def edit
  end

  def update
    if @resource.update(resource_params)
      redirect_to action: :show
    else
      render 'edit'
    end
  end

  def destroy
    if @resource.destroy
      redirect_to admin_resource_path, notice: t("deleted")
    end
  end

  private

  def load_resource
    @resource = resource_class.find(params[:id]).decorate
    authorize @resource
  end

  def resource_class
    # has to be defined by the subclass
    fail 'not defined'
  end

  def resource_params
    # has to be defined by the subclass
    fail 'not defined'
  end

  def admin_resource_path
    send("admin_#{resource_class.to_s.downcase.pluralize}_path")
  end
end
