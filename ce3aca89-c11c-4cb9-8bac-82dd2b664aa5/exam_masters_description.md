`&`演算子は左辺と右辺の論理積を返します。  
`|`演算子は左辺と右辺の論理和を返します。

```ruby
a & b  # => [2, 4]
a | b  # => [1, 2, 3, 4, 5, 6]
```

論理演算子`&&`(論理積)は左辺の式で結果が決まる場合、右辺の評価は行わず、最後に評価した値を返します。

```ruby
1 && nil # => nil
nil && 1 # => nil 右辺は評価されない
```

`Enumerable#map`メソッドは、レシーバの各要素に対して引数で指定した処理を行なった結果を含む配列を返します。

```ruby
[1, 2, 3].map(&:to_s)                # => ["1", "2", "3"]
[1, 2, 3].map { |n| n + 1 }          # => [2, 3, 4]
```

`Integer#next`メソッドはレシーバの次の整数を返します。

```ruby
1.next #=> 2
10.next #=> 11
```