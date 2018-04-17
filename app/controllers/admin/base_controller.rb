class Admin::BaseController < ApplicationController
  layout 'admin'

  before_action :authenticate_user!
  before_action :authorize_admin!

  private

  def authorize_admin!
    authorize(User, :access_admin?)
  end
end
