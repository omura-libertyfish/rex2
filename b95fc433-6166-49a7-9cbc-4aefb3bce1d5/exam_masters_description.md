`String`クラスに`to_h`というメソッドはありません。

```ruby
p String.method_defined?(:to_h)

# <実行結果>
# false
```