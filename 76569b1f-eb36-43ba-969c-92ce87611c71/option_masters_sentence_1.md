```ruby
module M
  include self
  def a
    100
  end
end

p M.a
```
