Refinementを有効化するには`using`を使います。
また、`using`を書いたあとで有効化されますので、それ以前の処理は再定義されません。

```ruby
class C
  def m1
    100
  end
end

module M
  refine C do
    def m1
      200
    end
  end
end

puts C.new.m1 # 100 が表示されます

using M

puts C.new.m1 # 200 が表示されます
```
