module Paginatable
  extend ActiveSupport::Concern

  def paginate(resource)
    amount = Kaminari.config.default_per_page

    per_page = params[:per_page] || amount
    per_page = amount if per_page > amount
    page = params[:page] || 0

    resource.page(page).per(per_page)
  end
end
