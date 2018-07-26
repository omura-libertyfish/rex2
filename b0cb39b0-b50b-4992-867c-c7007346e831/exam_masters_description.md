比較メソッドの問題です。  

- `==`  
値が等しいかどうか(同値性)をチェック  
整数と浮動小数点数との比較でも数値的に等しければ`true`を返す  

- `eql?`  
同値性をチェック  
`==`と違い、型の比較も行う  
`Integer`クラスのオブジェクトと`Float`クラスのオブジェクトの比較なので、数値的に等しくても`false`を返す  
- `equal?`  
同じオブジェクトかどうかチェック  
メソッドでオブジェクトIDを比較  
数値や文字列のリテラルは全てオブジェクトであり、それぞれ一意のIDを保持  
その一意のIDを比較し、同一のオブジェクトかどうかを判定  
オブジェクトIDは`object_id`メソッドを使用し参照可能  

```ruby
puts 1.object_id    #=> 3
puts x.object_id    #=> 3
puts 1.0.object_id  #=> -36028797018963966
puts y.object_id    #=> -36028797018963966
```

```ruby
x = 1      # Integerクラスのオブジェクト
y = 1.0    # Floatクラスのオブジェクト
print x == y      #=> ture
print x.eql? y    #=> false
print x.equal? y  #=> false
print x.equal?(1) #=> true
```
