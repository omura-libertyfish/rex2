require 'securerandom'
require 'yaml'
require 'fileutils'
require './exam_uuid'

namespace :template do
  desc "Create ExamMaster and OptionMaster markdown files"
  task create: [:load] do
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

  namespace :create do
    desc "Create ExamMaster and OptionMaster markdown files (Gold ver)"
    task gold: ['template:load'] do
      @default['exam_type'] = 'gold'
      Rake::Task['template:create'].invoke
    end

    desc "Create ExamMaster and OptionMaster markdown files (Silver ver)"
    task silver: ['template:load'] do
      @default['exam_type'] = 'silver'
      Rake::Task['template:create'].invoke
    end
  end

  # hook task
  task :load do
    env = YAML.load_file('./env.yml')
    @markdown_files ||= env['markdown']
    @default ||= env['default']
  end
end

namespace :exam do
  desc "Check required items are defined"
  task :check do
    Exam::each_uuid.each do |uuid|
      puts "exam_type must be 'silver' or 'gold' (#{uuid})" unless Exam::valid_exam_type? uuid.yaml
      puts "answer must be instance of Array and each value is in the range [1,2,3,4] (#{uuid})" unless Exam::valid_answer_option? uuid.yaml
      uuid.markdown_files do |markdown_file|
        puts "can't include '^H' in a file (#{markdown_file})" if File.read(markdown_file).index('')
        puts "blank lines are consecutive (#{markdown_file})" if File.read(markdown_file).gsub("\s", '').index("\n\n\n")
      end
    end
  end

  desc "Summarize"
  task :summarize do
    puts Exam::summarize
  end
end

# default
task default: 'exam:check'
