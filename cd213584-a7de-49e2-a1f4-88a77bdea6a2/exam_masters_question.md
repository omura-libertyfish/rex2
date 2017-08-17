次のコードを実行するとどうなりますか
```ruby
module M1
end

module M2
end

class C
  prepend M1, M2
end

p C.ancestors
```
