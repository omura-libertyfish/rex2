クラスは`Class`クラスのインスタンスであり、メソッド外で定義されている`@var`は`Foo`クラスのクラスインスタンス変数になります。  
クラスインスタンス変数はインスタンス変数と接頭辞に違いがなく見た目が一緒なので、インスタンスメソッド内から直接参照できません。  
クラスインスタンス変数には、クラスメソッドを用意してアクセスします。
またクラスインスタンス変数は、継承先から引き継がれません。  

```ruby
class Foo
  @var = 1

  def initialize
    @var = 2
  end

  def var
    @var
  end

  def self.var
    @var
  end
end

Foo.var     # => 1
Foo.new.var # => 2
```

クラス外に定義することも可能です。

```ruby
class Foo
  @var = 1
end

def Foo.var
  @var
end

Foo.var     # => 1
```

クラスインスタンス変数は引き継がれません。

```ruby
class Foo
  @var = "Ruby"

  def self.var
    "#{@var} / Examination"
  end
end

class Baz < Foo
end

p Foo.var # => "Ruby / Examination"
p Baz.var # => " / Examination"
```