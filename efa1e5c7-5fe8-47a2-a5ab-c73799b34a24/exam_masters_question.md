```ruby
arr = [5, 3, 8, 1, 4, 2, 6, 9, 0, 7]
arr.sort!{ |a, b | b <=> a }.reverse!
p arr.reverse
```
