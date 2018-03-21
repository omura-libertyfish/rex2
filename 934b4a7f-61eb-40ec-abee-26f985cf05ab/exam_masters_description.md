メソッド`const`は特異クラスで定義されていないので、例外が発生します。
`const`メソッドを実行したい場合は次のように`module_function`または`instance_eval`を使う必要があります。

```ruby
m.module_eval(<<-EOS) # module_eval のまま
  CONST = "Constant in Module instance"

  def const
    CONST
  end

  module_function :const # module_function にシンボルでメソッドを指定する
EOS
```

```ruby
m.instance_eval(<<-EOS) # instance_eval で特異クラスにメソッドを定義する
  CONST = "Constant in Module instance"

  def const
    CONST
  end
EOS
```
