次のプログラムを実行するとどうなりますか

```ruby
module M
  @@val = 75

  class Parent
    @@val = 100
  end

  class Child < Parent
    @@val += 50
  end

  if Child < Parent
    @@val += 25
  else
    @@val += 30
  end
end

p M::Child.class_variable_get(:@@val)
```
