次のコードの実行結果として正しいものを選択してください。

```ruby
count = 0

begin
  1 / count
rescue NameError
  count += 1
  retry
rescue NoMethodError
  count += 2
  retry
rescue ZeroDivisionError
  count += 3
  retry
else
  puts 4
ensure
  puts "count: #{count}"
end
```
