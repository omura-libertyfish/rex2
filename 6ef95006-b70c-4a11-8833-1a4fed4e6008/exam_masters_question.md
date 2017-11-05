次のコードを実行するとどうなりますか

```ruby
class C
  def self.m1
    200
  end
end

module R
  refine C.singleton_class do
    def m1
      100
    end
  end
end

using R

puts C.m1
```
