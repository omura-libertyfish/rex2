```ruby
def bar(&block, n)
  block.call
end
bar(5) {
  puts "hello, world"
}
```
