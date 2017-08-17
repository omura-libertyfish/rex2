次のコードを実行するとどうなりますか
```ruby
begin
  raise StandardError.new
rescue => e
  puts e.class
end
```
