class KAdmin::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def run_other_generators
    # pundit
    generate "pundit:install"
  end

  def create_policy_file
    copy_file "policy.rb", "app/policies/resource_policy.rb"
  end

  def create_initializer_file
    copy_file "initializer.rb", "config/initializers/k_admin.rb"
  end
end
