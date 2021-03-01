require 'pathname'

module Exam
  class UUID
    def initialize(uuid)
      env = YAML.load_file('./env.yml')
      @uuid = uuid
      @markdown_files = env['markdown']
    end

    def to_s
      File.basename @uuid
    end

    def yaml
      default_yaml = @uuid.join 'default.yml'
      YAML.load_file default_yaml
    end

    def markdown_files
      @markdown_files.each do |file|
        yield @uuid.join(file)
      end
    end
  end

  def self.uuids
    uuid_regexp = /\A[a-f0-9]{8}-[a-f0-9]{4}-4[a-f0-9]{3}-[89aAbB][a-f0-9]{3}-[a-f0-9]{12}\z/
    Dir.glob('*').select{|path| path.match uuid_regexp}.map{|path| Pathname.new(path)}
  end
  private_class_method :uuids

  def self.each_uuid
    Enumerator.new do |yielder|
      uuids.each do |uuid|
        uuid = UUID.new(uuid)
        yielder << uuid
      end
    end
  end

  def self.valid_exam_type? yaml
    begin
      ['silver', 'gold'].include? yaml['exam_type']
    rescue
      false
    end
  end

  #カテゴリがないとエラー分を表示させるメソッド
  def self.valid_exam_category?(yaml)
    begin
      if yaml['exam_type'].include?('silver')
        %w[grammar object_orientation built_in_library].include? yaml['category']
      elsif yaml['exam_type'].include?('gold')
        %w[execution_environment grammar object_orientation built_in_library standard_attached_library difficult_question].include? yaml['category']
      end
    rescue
      false
    end
  end

  def self.valid_answer_option? yaml
    begin
      yaml['answer'].length.nonzero? && yaml['answer'].all?{|index| [1,2,3,4].include?(index)}
    rescue
      false
    end
  end

  def self.summarize
    @exam_type = {'silver' => 0, 'gold' => 0}
    @answer = {}
    @category_silver = [0, 0, 0]
    @category_gold = [0, 0, 0, 0, 0, 0]

    each_uuid.each do |uuid|
      @exam_type[uuid.yaml['exam_type']] += 1 if valid_exam_type? uuid.yaml
      uuid.yaml['answer'].map do |val|
        @answer[val - 1] ||= 0
        @answer[val - 1] += 1
      end if valid_answer_option? uuid.yaml

      # 配列のハッシュに変更
      if uuid.yaml['exam_type'] == 'silver' 
        case uuid.yaml['category']
          when 'grammer'
          @category_silver[0] += 1
          when 'object_orientation'
          @category_silver[1] += 1
          when 'built_in_library'
          @category_silver[2] += 1
        end
      elsif uuid.yaml['exam_type'] == 'gold'
        case uuid.yaml['category']
          when 'execution_environment'
            @category_gold[0] += 1
          when 'grammer'
            @category_gold[1] += 1
          when 'object_orientation'
            @category_gold[2] += 1
          when 'built_in_library'
            @category_gold[3] += 1
          when 'standard_attached_library'
            @category_gold[4] += 1
          when 'difficult_question'
            @category_gold[5] += 1
        end
      else
        puts "error"
      end

    end

    <<-REPORT
exam_type:
  silver: #{@exam_type['silver']}
  gold: #{@exam_type['gold']}
answer:
  1: #{@answer[0]}
  2: #{@answer[1]}
  3: #{@answer[2]}
  4: #{@answer[3]}
category:
  silver:
    grammer: #{@category_silver[0]}
    object_orientation: #{@category_silver[1]}
    built_in_library: #{@category_silver[2]}
  gold:
    execution_environment: #{@category_gold[0]}
    grammer: #{@category_gold[1]}
    object_orientation: #{@category_gold[2]}
    built_in_library: #{@category_gold[3]}
    standard_attached_library: #{@category_gold[4]}
    difficult_question: #{@category_gold[5]}
    REPORT
  end
end
