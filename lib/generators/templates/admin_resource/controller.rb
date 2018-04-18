class Admin::<%= controller_class_name %>Controller < Admin::ResourcesController
  private

  def resource_class
    <%= class_name %>
  end

  def resource_params
    # add params here
    params.require(:<%= singular_name %>).permit()
  end
end
