次のコードの実行結果として正しいものを選択してください。

```ruby
exceptions = {
  NameError => "変数または定数が存在しません",
  NoMethodError => "メソッドが定義されていません",
  RuntimeError => "特定の例外が発生しました"
}

begin
  raise
rescue => e
  b = e.class.new(exceptions[e.class])
  puts b.message
else
  puts "例外は発生しませんでした"
end
```