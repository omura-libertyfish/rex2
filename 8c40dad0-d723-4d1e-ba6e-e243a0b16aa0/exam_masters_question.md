次のコードを実行するとどうなりますか
```ruby
begin
  print "liberty" + :fish.to_s
rescue TypeError
  print "TypeError."
rescue
  print "Error."
else
  print "Else."
ensure
  print "Ensure."
end
```
