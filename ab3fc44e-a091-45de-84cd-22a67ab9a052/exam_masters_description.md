`Enumerable#each_with_index`メソッドは、レシーバに指定されたオブジェクトの「要素 + インデックス」を要素の数だけ繰り返しブロックに渡します。  
インデックスは`0`から始まります。

```ruby
[1, 2, 3].each_with_index do |value, index|
  # ブロック変数valueには配列の各要素が渡されています
  # ブロック変数indexはその要素のインデックスが渡されています
  puts  "#{index} / #{value}"
end
```

**実行結果**

```ruby
0 / 1
1 / 2
2 / 3
```