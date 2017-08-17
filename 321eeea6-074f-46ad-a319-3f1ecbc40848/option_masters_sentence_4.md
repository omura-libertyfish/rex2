```ruby
def bar(n, &block)
  block.call
end

bar(5) {
  puts "hello, world"
}
```
