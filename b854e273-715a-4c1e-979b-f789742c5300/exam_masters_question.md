次のコードを実行するとどうなりますか
```ruby
def hoge(n)
  unless n == 3
    ret = "hello"
  end
  if n == 5
    ret = "world"
  end
  ret
end

str = ''
str.concat hoge(4)
str.concat hoge(5)

puts str
```
