次のコードを実行するとどうなりますか
```ruby
def hoge(n)
  unless n != 3
    "hello"
  elsif n == 5
    "world"
  end
end

str = ''
str.concat hoge(3)
str.concat hoge(5)

puts str
```
