require 'securerandom'
require 'yaml'
require 'fileutils'

namespace :template do
  desc "Create ExamMaster and OptionMaster markdown files"
  task :create do
    uuid =  SecureRandom.uuid
    FileUtils.mkdir(uuid)

    @markdown_files.each do |markdown_file|
      FileUtils.touch("#{uuid}/#{markdown_file}")
    end

    puts "Markdown files are located in #{uuid}"
  end

  task :load do
    @markdown_files = YAML.load_file("./env.yml")['markdown']
  end

  # hook
  task create: :load
end
