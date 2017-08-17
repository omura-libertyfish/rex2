次のコードを実行するとどうなりますか
```ruby
def foo(n)
  n ** n
end

foo = Proc.new { |n|
  n * 3
}

puts foo[2] * 2
```
