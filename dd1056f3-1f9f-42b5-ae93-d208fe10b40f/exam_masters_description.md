期待値はキーが`:price`と`:tax`の値を配列です。

- `Hash#key`
`Hash#key`メソッドは引数を１つ取ります。返却値は引数に合った値を持つキーです。
もし引数の値を持つキーがなければ、`nil`を返します。
```ruby
hash = {price: 100, order_code: 200, order_date: "2018/09/20", tax: 0.8}

p hash.key 100 # :price が表示される
p hash.key 150 # nil が表示される
```

- `Hash#values`
`Hash#values`メソッドは引数を取りません。返却値はレシーバーの値を集めた配列です。
```ruby
hash = {price: 100, order_code: 200, order_date: "2018/09/20", tax: 0.8}

p hash.values # [100, 200, "2018/09/20", 0.8] が表示される
```

- `Hash#values_at`
`Hash#values_at`メソッドは可変長引数を取ります。返却値は引数に指定したキーの値を集めた配列です。
```ruby
hash = {price: 100, order_code: 200, order_date: "2018/09/20", tax: 0.8}

p hash.values_at(:price, :tax) # [100, 0.8] が表示される
```

- `Hash#[]`
`Hash#[]`メソッドは引数を１つ取ります。返却値は引数に合ったキーが持つ値です。  
もし引数のキーがハッシュになければ、`nil`を返します。
```ruby
hash = {price: 100, order_code: 200, order_date: "2018/09/20", tax: 0.8}

p hash.[](:price) # 100 が表示される
p hash.[](:bazz) # nil が表示される
```

この問題では、複数のキーを指定し対応する値を配列にする`values_at(:price, :tax)`が正解です。
