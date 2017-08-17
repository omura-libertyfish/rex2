次のコードを実行するとどうなりますか
```ruby
def hoge
  x = 0
  1.step(5,1) do |i|
    x += 1
  end
  puts x
end
hoge
```
