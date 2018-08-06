次のプログラムで例外`FiberError`が発生する、`Fiber#resume`の組み合わせを選択肢から選んでください。

```ruby
f = Fiber.new do
  Fiber.yield 15
  5
end
```
