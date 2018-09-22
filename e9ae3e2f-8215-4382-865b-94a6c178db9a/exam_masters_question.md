次のプログラムでmethod_1が呼び出せる組み合わせを選んでください

```ruby
module Parent
  def method_1
    __method__
  end
end

module Child
  # ここに挿入する選択肢を選んでください。
end

p Child::method_1
```