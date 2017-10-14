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
    each_default do |uuid, local|
      unless local.has_key?('exam_type') && ['silver', 'gold'].include?(local['exam_type'])
        fail %{exam_type must be 'siliver' or 'gold' in #{uuid}'}
      end

      unless local.has_key?('work_in_progress') && [true, false].include?(local['work_in_progress'])
        fail %{work_in_progress must be Boolean in #{uuid}}
      end

      # Skip check answer if work_in_progress is true
      next if local['work_in_progress']

      unless answer_nil? local
        fail %{answer is instance of Array and each value is in the range [1,2,3,4] in #{uuid}}
      end
    end
  end

  desc "Count questions of each difficulty"
  task :counting do
    count = Count.new
    each_default do |uuid, local|
      count.exam_type[local['exam_type']] += 1 if ['silver', 'gold'].include?(local['exam_type'])

      count.work_in_progress <<= uuid if local['work_in_progress']

      local['answer'].map{|val| count.answer[val-1] ||= 0; count.answer[val-1] += 1} if answer_nil? local
    end
    puts count.to_hash.to_yaml
  end

  task :load do
    env = YAML.load_file('./env.yml')
    @markdown_files = env['markdown']
    @default = env['default']
  end

  # hook
  task create: :load

  private
  def each_default
    uuids = Dir.glob('*').select {|f| File.directory? f}

    uuids.each do |uuid|
      local = YAML.load_file("#{uuid}/default.yml")
      yield(uuid, local)
    end
  end

  def answer_nil? local
    local.has_key?('answer') && local['answer'].instance_of?(Array) && local['answer'].length.nonzero? && local['answer'].all?{|val| [1,2,3,4].include?(val)}
  end

  class Count
    attr_accessor :exam_type, :work_in_progress, :answer

    def initialize
      @exam_type = {'silver' => 0, 'gold' => 0}
      @work_in_progress = []
      @answer = {}
    end

    def to_hash
      @answer = @answer.sort
      {
        :exam_type.to_s => [{'silver' => @exam_type['silver']},
                            {'gold' => @exam_type['gold']}],
        :work_in_progress.to_s => @work_in_progress,
        :answer.to_s => @answer.map {|k, v| { k + 1 => v } }
      }
    end
  end
end

# default
task default: 'template:check'
