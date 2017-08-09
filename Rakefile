require 'securerandom'
require 'yaml'

namespace :template do
  desc "create"
  task :create do
    uuid =  SecureRandom.uuid
    system("mkdir #{uuid.to_s}")
    system("cp ./doc/* #{uuid.to_s}")
  end

  desc "check_yaml"
  task :check_yaml do
    Dir.glob('*/').each do |d|
      file_name = "./#{d}answer.yml"
      yaml_data = nil
      File.open(file_name) do |file|
        yaml_data = file.read
      end

      if yaml_data.empty?
        puts "#{d}answer.ymlに記載がありません。"
      end
    end
  end

end
