数値は`Fixnum`クラスのオブジェクトです。`Fixnum`クラスは`Integer`クラスのサブクラスです。

問題では、`Integer`クラスへ`+`メソッドをオープンクラスし、オーバーロードているように取れます。
しかし、`+`メソッドは`Fixnum`クラスで定義されています。
よって、元の`Fixnum#+`が呼ばれます。

```ruby
p 1.class.ancestors           #=> [Fixnum, Integer, Numeric, Comparable, Object, Kernel, BasicObject]
p Numeric.method_defined?(:+) #=> false
p Integer.method_defined?(:+) #=> false
p Fixnum.method_defined?(:+)  #=> true
```
