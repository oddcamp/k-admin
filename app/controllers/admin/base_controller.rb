class Admin::BaseController < ActionController::Base
  include Paginatable
  include Pundit
  protect_from_forgery

  layout 'admin'

  before_action :authorize_admin!

  def authorize_admin!
    send(KAdmin.authentication_method) if KAdmin.authentication_method
  end
end
