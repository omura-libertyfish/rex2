次のプログラムを実行すると何が表示されますか

```ruby
p Class.method_defined? :new
p String.method_defined? :new
p Class.singleton_class.method_defined? :new
p String.singleton_class.method_defined? :new
```
