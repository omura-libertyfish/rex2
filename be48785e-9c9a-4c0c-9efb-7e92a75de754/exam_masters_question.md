次のプログラムを実行するとどうなりますか

```ruby
module A
  B = 42

  def f
    21
  end
end

A.module_eval(<<-CODE)
  def self.f
    p B
  end
CODE

B = 15

A.f
```
