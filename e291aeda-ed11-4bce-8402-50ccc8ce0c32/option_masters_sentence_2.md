```ruby
class Human
  attr_reader :name

  def name
    "Mr. " + super
  end

  def initialize(name)
    @name = name
  end
end

human = Human.new("Andrew")
puts human.name
```
