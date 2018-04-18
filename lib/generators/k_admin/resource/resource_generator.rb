class KAdmin::ResourceGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  include Rails::Generators::ResourceHelpers

  def create_controller_file
    template "controller.rb", File.join("app/controllers/admin/", "#{controller_file_name}_controller.rb")
  end

  def create_decorator_file
    template "decorator.rb", File.join("app/decorators/", "#{singular_name}_decorator.rb")
  end

  def create_view_file
    copy_file "views/_form.html.erb", "app/views/admin/#{plural_name}/_form.html.erb"
  end
end
