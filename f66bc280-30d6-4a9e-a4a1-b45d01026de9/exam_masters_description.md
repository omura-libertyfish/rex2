問題のコードは`ArgumentError: missing keyword: arg`が発生します。

`arg`はキーワード引数と言います。キーワード引数は省略することができません。

問題のコードは次のように修正します。

```ruby
def foo(arg:)
  puts arg
end

foo arg: 100
```