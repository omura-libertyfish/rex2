次のプログラムを実行するとどうなりますか

```ruby
class Object
  CONST = "100"
end

class C
  CONST = "010"
  class << self
    CONST = "001"
  end
end

p C::CONST
```
