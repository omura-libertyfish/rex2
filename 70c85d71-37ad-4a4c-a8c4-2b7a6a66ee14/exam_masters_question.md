次のプログラムを実行するとどうなりますか

```ruby
class C
  @@val = 10
end

module B
  @@val = 30
end

module M
  include B
  @@val = 20

  class << C
    p @@val
  end
end
```
