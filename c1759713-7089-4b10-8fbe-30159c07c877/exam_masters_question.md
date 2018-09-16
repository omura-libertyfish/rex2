期待する出力結果を得るために、適切な選択肢を選んでください。

```ruby
module M
  def method_a
    __method__
  end
end

class C
  include M
end

p C.new.method_a

# ここに当てはまるプログラムを選んでください。

p C.new.method_b
```

期待する結果

```ruby
:method_a
:method_b
```