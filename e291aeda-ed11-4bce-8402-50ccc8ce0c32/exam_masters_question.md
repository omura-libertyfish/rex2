次のプログラムと同じ結果になる選択肢を選んでください

```ruby
class Human
  attr_reader :name

  alias original_name name

  def name
    "Mr. " + original_name
  end

  def initialize(name)
    @name = name
  end
end

human = Human.new("Andrew")
puts human.name
```
