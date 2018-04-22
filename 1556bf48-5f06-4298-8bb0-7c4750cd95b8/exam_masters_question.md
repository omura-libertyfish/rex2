次のプログラムを実行するとどうなりますか

```ruby
mod = Module.new

mod.module_eval do
  EVAL_CONST = 100
end

puts "EVAL_CONST is defined? #{mod.const_defined?(:EVAL_CONST, false)}"
puts "EVAL_CONST is defined? #{Object.const_defined?(:EVAL_CONST, false)}"
```
