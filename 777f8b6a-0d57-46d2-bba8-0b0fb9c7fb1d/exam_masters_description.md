```ruby
v1 = 1 - 1 == 0
v2 = v1 || raise RuntimeError
puts v2 && false
```

1行目を処理した後の`v1`は`true`になります。

2行目では、`||`の優先順位が高いため、`v1 || raise`が評価されます。
しかし、後ろに`RuntimeError`があるため、シンタックスエラーになっています。
この挙動を回避するには、以下の3つの方法があります。

ex1)

```ruby
v2 = v1 or raise RuntimeError
```

ex2)

```ruby
v2 = v1 || raise(RuntimeError)
```

ex3)

```ruby
v2 = v1 || (raise RuntimeError)
```

そのほかの演算子の優先順位は[Rubyリファレンス](https://docs.ruby-lang.org/ja/2.1.0/doc/spec=2foperator.html)を参照してください。
