`Class#name`はクラス名を文字列で返します。
`Human#name`クラスは`Class#name`をオーバーライドしているので、`const_get`が呼ばれます。

`const_get`は、`self`に定義された定数を探索します。自クラスに定義がない場合は、メソッドと同様に探索を行います。

問題コードの5行目時点のインスタンスは`Fukuzawa`クラスです。
よって、`Human#name`は`Fukuzawa`クラスの`Yukichi`を返します。

```ruby
 1: class Human
 2:   NAME = "Unknown"
 3: 
 4:   def self.name
 5:     const_get(:NAME)
 6:   end
 7: end
 8: 
 9: class Fukuzawa < Human
10:   NAME = "Yukichi"
11: end
12: 
13: puts Fukuzawa.name
```
