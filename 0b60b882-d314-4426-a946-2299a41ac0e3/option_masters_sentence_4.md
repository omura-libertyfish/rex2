```ruby
module MathConstant
  PI = 3.14
end

class Area
  def circle(r)
    r * r * ::PI
  end
end

area = Area.new
p area.circle 10
```