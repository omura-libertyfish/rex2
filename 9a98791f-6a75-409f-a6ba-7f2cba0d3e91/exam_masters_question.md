次のプログラムの実行結果として正しいものを選択してください。

```ruby
arr = [
  true.equal?(true),
  nil.eql?(NilClass),
  String.new.equal?(String.new),
  1.equal?(1)
]

p arr.collect { |a| a ? 1 : 2 }.inject(:+)
```