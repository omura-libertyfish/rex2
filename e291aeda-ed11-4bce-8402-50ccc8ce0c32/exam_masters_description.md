この問題ではアクセサを`attr_reader`で作成していますが、`alias`で`original_name`として別名をつけています。

新しく定義した`name`メソッドを実行すると、`Mr. Andrew`と表示されます。

---
`alias`と同じくメソッドの別名をつけます。オーバーライドして元のアクセサを呼び出すことができますので、問題と同じ結果になります。
```ruby
class Human
  attr_reader :name

  alias_method :original_name, :name

  def name
    "Mr. " + original_name
  end

  def initialize(name)
    @name = name
  end
end

human = Human.new("Andrew")
puts human.name
```
---
`name`メソッドの中で`super`で親クラスの同名のメソッドを呼び出そうとしていますが、親クラスの`Object`にはそのようなメソッドはありませんので同じ結果になりません。
```ruby
class Human
  attr_reader :name

  def name
    "Mr. " + super
  end

  def initialize(name)
    @name = name
  end
end

human = Human.new("Andrew")
puts human.name
```
---
イニシャライザで初期化したインスタンス変数を`name`メソッドで参照していますので、問題と同じ結果になります。
```ruby
class Human
  attr_reader :name

  def name
    "Mr. " + @name
  end

  def initialize(name)
    @name = name
  end
end

human = Human.new("Andrew")
puts human.name
```
---
`name`メソッドの中で同名のメソッドを呼び出していますので、再帰呼出しになっています。終了せず、例外が発生しますので問題と同じ結果にはなりません。
```ruby
class Human
  attr_reader :name

  def name
    "Mr. " + name
  end

  def initialize(name)
    @name = name
  end
end

human = Human.new("Andrew")
puts human.name
```
---
