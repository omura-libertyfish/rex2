`Enumerable#inject`はブロックを使用して繰り返し計算を行います。
`inject`には以下のような特徴があります。

- 引数を省略した場合は、要素1がブロック引数の1番目に渡されます。
- 引数を指定した場合は、その値が初期値になります。
- ブロック引数の1番目は前回の戻り値が渡されます。初回は、初期値が渡されます。
- ブロック引数の2番目は要素が順番に渡されます。

1行目は、以下のように処理されます。

```ruby
1 = 0 + 1 ** 2
5 = 1 + 2 ** 2
14 = 5 + 3 ** 2
```

2行目は、以下のように処理されます。

```ruby
1 = 0 + 1 ** 2
5 = 1 + 2 ** 2
14 = 5 + 3 ** 2
```

3行目は、以下のように処理されます。

```ruby
[1] = [] << 1 ** 2
[1, 4] = [1] << 2 ** 2
[1, 4, 9] = [1, 4] << 3 ** 2
```

4行目は以下のように、解釈されます。
`[1, 2, 3].inject`までが`p`メソッドの引数となるため、`p`メソッドへブロックが不正に渡されるため、エラーとなります。

```ruby
p([1, 2, 3].inject) do|x, y|
  x + y ** 2
end rescue p $!
```
