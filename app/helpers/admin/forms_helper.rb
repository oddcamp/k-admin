module Admin::FormsHelper
  def model_fiels_collection(model, field_name)
    model.send(field_name.pluralize).keys.map { |field| [I18n.t("activerecord.attributes.#{model.to_s.downcase}.#{field_name.pluralize}.#{field}"), field] }
  end
end
