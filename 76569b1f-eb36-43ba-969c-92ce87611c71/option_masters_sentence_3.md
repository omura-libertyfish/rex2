```ruby
module M
  def a
    100
  end

  module_function :a
end

p M.a
```
