module ExamYAML
  def self.each_yaml
    uuids = Dir.glob('*').select {|f| File.directory? f}

    Enumerator.new do |yielder|
      uuids.each do |uuid|
        yaml = YAML.load_file("#{uuid}/default.yml")
        yielder << [uuid, yaml]
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

    each_yaml.each do |uuid, yaml|
      @exam_type[yaml['exam_type']] += 1 if valid_exam_type? yaml
      @work_in_progress <<= uuid if yaml['work_in_progress']
      yaml['answer'].map do |val|
        @answer[val - 1] ||= 0
        @answer[val - 1] += 1
      end if valid_answer_option? yaml
    end

    <<-REPORT
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
