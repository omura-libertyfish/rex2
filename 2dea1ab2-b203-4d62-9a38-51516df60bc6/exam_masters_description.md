`Array#each_slice(n)`は、`self`から`n`個で配列を区切りブロックに渡します。

`each_slice`の例

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each_slice(3) do |i|
  p i
end

# 実行結果
# [1, 2, 3]
# [4, 5, 6]
# [7, 8, 9]
# [10]
```
