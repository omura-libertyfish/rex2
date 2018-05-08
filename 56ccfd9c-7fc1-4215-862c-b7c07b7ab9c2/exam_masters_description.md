`Kernel#Array`、`Kernel#Hash`、`Kernel#String`は`Kernel`のモジュール関数として定義されています。
`Kernel#Date`はありません。

これらのメソッドは次のように使います。

```ruby
p Array("Awesome Array") #=> ["Awesome Array"]
p Hash(awesome_key: :value) #=> {:awesome_key=>:value}
p String('0123456789') #=> "0123456789"
```
