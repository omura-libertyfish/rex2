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

  def self.valid_wip_status? yaml
    begin
      [true, false].include? yaml['work_in_progress']
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
    @work_in_progress = []
    @answer = {}

    each_uuid.each do |uuid|
      @exam_type[uuid.yaml['exam_type']] += 1 if valid_exam_type? uuid.yaml
      @work_in_progress <<= uuid if uuid.yaml['work_in_progress']
      uuid.yaml['answer'].map do |val|
        @answer[val - 1] ||= 0
        @answer[val - 1] += 1
      end if valid_answer_option? uuid.yaml
    end

    <<~REPORT
      exam_type:
        silver: #{@exam_type['silver']}
        gold: #{@exam_type['gold']}
      work_in_progress:
        #{@work_in_progress}
      answer:
        1: #{@answer[0]}
        2: #{@answer[1]}
        3: #{@answer[2]}
        4: #{@answer[3]}
    REPORT
  end
end
