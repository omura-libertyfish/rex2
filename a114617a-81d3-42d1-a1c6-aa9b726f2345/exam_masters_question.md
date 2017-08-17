次のコードで指定した行を書き換えた時，同じ結果になるものを選べ（複数選択）
```ruby
class C
  def v=(other) # ここから
    @v = other
  end
  def v
    @v
  end           # ここまで
end

c = C.new
c.v = 100
p c.v
```
