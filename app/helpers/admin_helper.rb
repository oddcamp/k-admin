module AdminHelper
  def available_resources
    Dir.glob('app/views/admin/*').select { |f| File.directory? f }.map { |directory| directory.split('/').last }
  end
end
