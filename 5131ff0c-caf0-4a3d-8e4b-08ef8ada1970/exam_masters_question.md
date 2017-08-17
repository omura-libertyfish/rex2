次のコードを実行するとどうなりますか
```ruby
module M1
end

module M2
end

class C
  include M1
  include M2
end

p C.ancestors
```
