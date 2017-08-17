以下のコードを実行するとどうなりますか
```ruby
def hoge(*args, &block)
  block.call(*args)
end

hoge(1,2,3,4) do |*args|
  p args.length > 0 ? "hello" : args
end
```
