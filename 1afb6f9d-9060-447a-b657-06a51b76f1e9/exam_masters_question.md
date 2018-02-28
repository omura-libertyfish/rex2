次のプログラムの`__(1)__`に適切な内容を選択して実行すると、`[97, 112, 112, 108, 101]`と表示されます。
期待した結果を得られるように正しい選択肢を選んでください。

```ruby
enum_char = Enumerator.new do |yielder|
  "apple".each_char do |chr|
    __(1)__
  end
end

array = enum_char.map do |chr|
  chr.ord
end

p array
```
