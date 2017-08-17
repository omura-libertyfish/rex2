require 'securerandom'
require 'yaml'
require 'fileutils'

namespace :template do
  desc "Create ExamMaster and OptionMaster markdown files"
  task :create do
    # generate uuid
    uuid =  SecureRandom.uuid
    # make directory
    FileUtils.mkdir(uuid)

    # touch markdown files
    @markdown_files.each do |markdown_file|
      FileUtils.touch("#{uuid}/#{markdown_file}")
    end

    # dump default.yml
    File.open("#{uuid}/default.yml", 'w') {|io|
      io.write @default.to_yaml
    }

    puts "Markdown files are located in #{uuid}"
  end

  desc "Check required items are defined"
  task :check do
    uuids = Dir.glob('*').select {|f| File.directory? f}

    uuids.each do |uuid|
      local = YAML.load_file("#{uuid}/default.yml")

      unless local.has_key?('exam_type') && ['silver', 'gold'].include?(local['exam_type'])
        fail %{exam_type must be 'siliver' or 'gold' in #{uuid}'}
      end

      unless local.has_key?('work_in_progress') && [true, false].include?(local['work_in_progress'])
        fail %{work_in_progress must be Boolean in #{uuid}}
      end

      # Skip check answer if work_in_progress is ture
      next if local['work_in_progress']

      unless local.has_key?('answer') && local['answer'].instance_of?(Array) && local['answer'].length.nonzero? && local['answer'].all?{|val| [1,2,3,4].include?(val)}
        fail %{answer is instance of Array and each value is in the range [1,2,3,4] in #{uuid}}
      end
    end
  end

  task :load do
    env = YAML.load_file('./env.yml')
    @markdown_files = env['markdown']
    @default = env['default']
  end

  # hook
  task create: :load
end

# default
task default: 'template:check'
