class ResourceDecorator < Draper::Decorator
  delegate_all

  def admin_path
    model.persisted? ? helpers.send("admin_#{model_name.singular}_path", model) : helpers.send("admin_#{model_name.plural}_path")
  end

  def edit_admin_path
    helpers.send("edit_admin_#{model_name.singular}_path", model)
  end

  def self.new_admin_path
    helpers.send("new_admin_#{model_name.singular}_path")
  end
end
