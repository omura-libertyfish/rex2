`Module#include`はモジュールの定義内容、メソッドや定数などを引き継ぎます。

```ruby
module M
  M = "m"

  def m
    M
  end
end

class C
  include M
end

p C.new.m # => "m"
p C::M    # => "m"
```

クラスを継承する場合スーパークラスはクラスである必要があるためモジュールをスーパークラスとして定義することはできません。

```ruby
module M
end

class C < M
end

# TypeError (superclass must be a Class (Module given))
```

`::`演算子を使用することでクラス内部から外部の定数を参照することができます。  
またクラスやモジュールを指定することで指定したクラス、モジュール内部の定数を参照することも可能です。

```ruby
Const = "top"

module M
  Const = "m"
end

class C1
  include M

  def c1
    ::Const
  end
end

class C2
  def c2
    M::Const
  end
end

class C3 < C1
end

p C1.new.c1 # => "top"
p C2.new.c2 # => "m"
p Const     # => "top"
p M::Const  # => "m"
p C1::Const # => "m"
p C3::Const # => "m"
```

問題の`::PI`は`Area`クラス内部からトップレベルの`PI`を参照しており、トップレベルに定数`PI`は存在しないので`Area#circle`を実行し`::PI`を参照しようとすると見つけられないため`NameError`が発生します。