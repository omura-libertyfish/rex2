数値を比較するメソッドの問題です。  

Rubyでオブジェクトの比較をするメソッドは大きく分けて`==`、`eql?`、`equal?`の３つがあります。  
レシーバーをFixnumオブジェクトとした場合は次の通りです。  

注意：Fixnum、BignumはRuby2.4からIntegerに統合されました。  

- `==`  
Fixnumにあるメソッドです。  
数値として等しいかを判定します。`1`と`1.0`は同じ数値として判定され、`true`になります。
  ```ruby
  p 1 == 1.0 # ture とされる
  ```

- `eql?`  
Numericクラスのメソッドです。  
同じクラスのオブジェクトかつレシーバーにある`==`メソッドで等しいと判定された場合に`true`になります。  
  ```ruby
  p 1.eql? 1.0 # 1.0はFloatクラスのオブジェクトなので、`false`になります。
  p 1.eql? (0 + 1) # 計算結果がFixnumクラスのオブジェクトかつ、数値として等しいので、`true`になります。
  ```

- `equal?`  
BasicObjectクラスのメソッドです。　　
オブジェクトIDが同じであれば、`true`になります。  
オブジェクトIDとは、オブジェクト毎に割り振られる整数値です。Fixnumなどのイミュータブルオブジェクトは常に同じオブジェクトIDになります。  
  ```ruby
  p 1.equal? 1.0
  p 1.equal? (1 + 0)
  ```

この問題の実行結果は次のとおりです。  
```ruby
x = 1
y = 1.0

print x == y # 数値として等しいので、trueになります。
print x.eql? y # 1.0はFloatクラスのオブジェクトなので、falseになります。
print x.equal? y # 1.0は異なるオブジェクトIDを持つので、falseになります。
print x.equal?(1) # 1はどこで参照しても同じオブジェクトIDなので、trueになります。
```
答えは`truefalsefalsetrue`です。