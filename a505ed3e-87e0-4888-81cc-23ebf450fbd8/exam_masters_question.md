次のコードの実行結果として正しいものを選択してください。

```ruby
class Foo
  attr_accessor :foo

  def initialize
    @foo = 0
  end
end

foo1 = Foo.new
foo1.foo += 1
foo2 = Foo.new
foo2.foo += 2

puts "#{foo1.foo}/#{foo2.foo}"
```