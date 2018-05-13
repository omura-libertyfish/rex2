```ruby
class Human
  attr_reader :name

  alias_method :original_name, :name

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
