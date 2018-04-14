splat演算子(`*`)でハッシュを展開することが出来ます。
ハッシュはネストされた配列で表現出来ますので、splat(`*`)演算子ではその配列に対して展開を行います。

```ruby
hash = {a: 100, b: 200}
p hash.to_a # [[:a, 100], [:b, 200]]と表示されます。
```

この問題は、次のように表示されるのが答えです。

```ruby
[:a, 100]
[:b, 200]
```