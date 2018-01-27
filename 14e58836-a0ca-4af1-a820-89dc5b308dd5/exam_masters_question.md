
次のプログラムは"Hello, world"と表示します。
同じ結果になる選択肢はどれですか（複数選択）

```ruby
module M
  CONST = "Hello, world"
  def self.say
    CONST
  end
end

p M::say
```
