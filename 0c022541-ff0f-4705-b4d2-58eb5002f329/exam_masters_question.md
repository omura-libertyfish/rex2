次のプログラムを実行すると何が表示されますか

```ruby
f = Fiber.new do |total|
  Fiber.yield total + 10
end

p f.resume(100) + f.resume(5)
```
