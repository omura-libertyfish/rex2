`Module#<`はクラスの継承関係を比較することが出来ます。
継承をしているように見えますが、if文では継承関係を比較しています。

問題にあるローカル変数はそれぞれ次のように計算されます

```ruby
if C < BasicObject # CはBasicObjectの子孫であるため true
  val += 100 # val = 0 + 100
else
  val += 15 # こちらは評価されない
end

if B < C # # BはCの子孫ではないため false
  val += 100 # こちらは評価されない
else
  val += 15 # val = 100 + 15
end
```

この問題は`115`が表示されます。
