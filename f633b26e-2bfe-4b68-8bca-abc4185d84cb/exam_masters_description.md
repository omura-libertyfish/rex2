可変長引数を2つ定義することはできません。
可変長引数の実行結果は次の通りになります。

```ruby
def bar(n1, *n2, n3)
  puts "n1: #{n1}, n2: #{n2}, n3: #{n3}" # n1: 5, n2: [6, 7], n3: 8
end

bar 5, 6, 7, 8
```