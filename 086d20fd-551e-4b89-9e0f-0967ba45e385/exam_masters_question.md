次のコードを実行するとどうなりますか

```ruby
class C
  def self.m1
    200
  end
end

module R
  refine C do
    def self.m1
      100
    end
  end
end

using R

puts C.m1
```
