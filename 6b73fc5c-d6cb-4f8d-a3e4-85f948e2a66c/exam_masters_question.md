次のプログラムを実行し、インスタンス変数`hoge`に入っている値を確認するために`__(1)__`に入る選択肢を選んでください。

```ruby
class Foo
  def initialize(num)
    @hoge = num
  end
end

num = (1..99).to_a.shuffle.first
foo = Foo.new(num)

__(1)__
```

実行結果

```
#<Foo:0x00000000e7d308 @hoge=?>
```
