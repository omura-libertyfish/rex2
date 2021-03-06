三項演算子と`&`, `&&`, `|`, `||`演算子の問題です。
三項演算子とは複数行にわたる `if` 文を一行で記述することができる文法です。

```ruby
条件式 A ? 式 B : 式 C
```

条件式 A が真の時は式 B が実行され、偽の時は式 C が実行されます。

`&`と`&&`の違いについて
`&`は共通する要素を出力する

```ruby
a = [1, 2, 3]
b = [1, 3, 5]
a & b #=> [1, 3]
```

`&&`は a と b がどちらも真のとき、最後に評価された b を出力する

```ruby
a && b #=> [1, 3, 5]
```

`a = nil`の場合、右辺の処理は行われない

```ruby
a && b #=> nil
```

`|`と`||`の違いについて
`|`は重複している要素をまとめて出力する

```ruby
a = [1, 2, 3]
b = [1, 3, 5]
a | b #=> [1, 2, 3, 5]
```

`||`は a と b がどちらかが真のとき、最初に評価された a を出力する

```ruby
a || b #=> [1, 2, 3]
```

```ruby
a || b #=> [1, 3, 5]
```
