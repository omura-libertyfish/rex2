ダブルクオート(")で囲まれた文字列は式展開されます。
シングルクオート(')で囲まれた文字列は式展開されません。

ex)

```ruby
greet = "Hello"
puts "#{greet} world!"
puts '#{greet} world!'

# <実行結果>
# Hello world!
# #{greet} world!
```

`Object#equal?`は同一オブジェクトの場合に`true`を返します。
`String#eql?`は同一文字列の場合に`true`を返します。
ただし、自作クラスの場合は`Object#eql?`をオーバーライドする必要があります。
さもなければ、同一の内容であるにもかかわらず、オブジェクトIDが異なるため`false`になります。
