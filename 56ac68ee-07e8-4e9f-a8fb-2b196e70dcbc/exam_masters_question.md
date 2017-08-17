次のコードを実行するとどうなりますか
```ruby
begin
  raise "Err!"
rescue => e
  puts e.class
end
```
