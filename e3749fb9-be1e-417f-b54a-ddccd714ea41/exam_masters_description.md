`alias`式はメソッドやグローバル変数に別名を付けることができます。
定義は以下のようにします。

```ruby
alias new_method old_method
alias :new_method :old_method
alias $new_global_val $old_global_val
```

メソッド内でメソッドに別名をつける必要がある場合は、`Module#alias_method`を使います。

```ruby
alias_method "new_method", "old_method"
alias_method :new_method, :old_method
```
