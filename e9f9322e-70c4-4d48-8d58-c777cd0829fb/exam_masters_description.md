`String`クラスはクラスメソッド`new`でインスタンスを生成します。
`String`クラスは`Class`クラスのインスタンスですので、`String`クラスにある`new`は`Class`クラスのインスタンスメソッドです。
また、`Class`クラスはRubyで多種多様なクラスを生成しますので、`Class`にもクラスメソッドとして`new`があります。

```ruby
str = String.new("Awesome String") # new は Class のインスタンスメソッド
# str.new こういった呼び方は出来ない
Klass = Class.new # new は Class のクラスメソッド
```

表示される内容の組み合わせは次のとおりです。

```ruby
p Class.method_defined? :new #=> ture
p String.method_defined? :new #=> false
p Class.singleton_class.method_defined? :new #=> ture
p String.singleton_class.method_defined? :new #=> ture
```
