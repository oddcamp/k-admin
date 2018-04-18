class AdminResourceGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  include Rails::Generators::ResourceHelpers

  def run_other_generators
    # pundit
    generate "pundit:install"
  end

  def create_controller_file
    template "admin_resource/controller.rb", File.join("app/controllers/admin/", "#{controller_file_name}_controller.rb")
  end

  def create_decorator_file
    template "admin_resource/decorator.rb", File.join("app/decorators/", "#{singular_name}_decorator.rb")
  end

  def create_policy_file
    copy_file "admin_resource/policy.rb", "app/policies/resource_policy.rb"
  end

  def create_view_file
    copy_file "admin_resource/views/_form.html.erb", "app/views/admin/#{plural_name}/_form.html.erb"
  end
end
