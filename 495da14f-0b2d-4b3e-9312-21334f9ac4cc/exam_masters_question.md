次のプログラムで`200`が表示されるように`XXXX`に適切なコードを選べ

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

XXXX

puts C.new.m1
```
