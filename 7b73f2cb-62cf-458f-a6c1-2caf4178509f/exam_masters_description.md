`attr_accessor`メソッドは引数に指定した名前のインスタンス変数に対して読み取り用のメソッド(getterメソッド)と書き込み用メソッド(setterメソッド)を定義します。  
引数には`String`クラスか`Symbol`クラスのリテラルを指定します。複数指定も可能です。  
クラス内で例1のように`attr_accessor :a`と記述すると例2のようにインスタンス変数`@a`に対して読み取り用のメソッドと書き込み用のメソッドを定義したことになります。  
`attr_accessor`メソッドの引数に指定された名前のインスタンス変数への読み取りと書き込みの両方が可能になります。

**例1**

```ruby
class Foo
  attr_accessor :a
end
```

**例2**
```ruby
class Foo
  # getter
  def a
    @a
  end

  # setter
  def a=(val)
    @a = val
  end
end
```

```ruby
class Foo
  attr_accessor :a, "b"
end

foo = Foo.new
foo.a, foo.b = "aaa", "bbb"

puts foo.a # => aaa
puts foo.b # => bbb
```