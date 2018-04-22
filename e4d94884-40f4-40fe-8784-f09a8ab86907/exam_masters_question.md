次のプログラムを実行すると`215`が表示されます。
`__(1)__`に適切な選択肢を選んでください。

```ruby
val = 100

def method(val)
  yield(15 + val)
end

_proc = Proc.new{|arg| val + arg }

p method(val, __(1)__)
```
