次のプログラムを実行するとどうなりますか

```ruby
module SuperMod
end

module SuperMod::BaseMod
  p Module.nesting
end
```
