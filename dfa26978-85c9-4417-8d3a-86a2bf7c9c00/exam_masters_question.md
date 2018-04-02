次のプログラムと同じ結果になるプログラムを選んでください。

```ruby
m = Module.new

m.instance_eval do
  m.instance_variable_set :@block, Module.nesting
end

m.instance_eval(<<-EVAL)
  m.instance_variable_set :@eval,  Module.nesting
EVAL

block = m.instance_variable_get :@block
_eval =  m.instance_variable_get :@eval

puts block.size
puts _eval.size
```
