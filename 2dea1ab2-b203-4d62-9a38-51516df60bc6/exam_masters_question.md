次のコードを実行するとどうなりますか
```ruby
arr = (1..30).to_a
container = []

arr.each_slice(7) do |i|
  container << i
end

p container.length
```
