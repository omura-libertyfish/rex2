次のコードの実行結果として正しいものを選択してください。

```ruby
exceptions = {
  NameError => "変数または定数が存在しません",
  ArgumentError => "引数が不正です",
  RuntimeError => "特定の例外が発生しました"
}

begin
  raise
rescue => e
  puts exceptions[e.class]
else
  puts "例外は発生しませんでした"
end
```