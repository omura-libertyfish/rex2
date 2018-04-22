次のプログラムと同じく特異クラスを取得する選択肢を選んでください。

```ruby
class C
  def self._singleton
    class << C
      self
    end
  end
end

p C._singleton
```
