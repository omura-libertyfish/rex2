次のプログラムの実行結果として正しいものを選択してください。

```ruby
class Foo
  attr_reader :a

  def initialize
    @a = "REx"
  end
end

foo = Foo.new
puts foo.a
```