次のコードの実行結果として正しいものを選択してください。

```ruby
class Foo
  @@foo = 0

  def foo ; @@foo ; end

  def foo=(value) 
    @@foo = value
  end
end

foo1 = Foo.new
foo1.foo += 1
foo2 = Foo.new
foo2.foo += 2

puts "#{foo1.foo}/#{foo2.foo}"
```