Rails.application.routes.draw do
  namespace :admin do
    # dynamically fetching routes from views folder
    Dir.glob('app/views/admin/*').select { |f| File.directory? f }.map { |directory| directory.split('/').last.to_sym }.each do |resources|
      resources resources
    end
  end
end
