`File.dirname`は引数に指定した文字列の一番後ろの`/`より前の文字列を返します。  
`/`を含まない文字列の場合`"."`を返します。

```ruby
File.dirname("text.txt") # => "."
File.dirname("REx/text.txt") # => "REx"
File.dirname("Desktop/REx/text.txt") # => "Desktop/REx"
```

`File.close`メソッド, `File.home`メソッド, `File.pwd`メソッドは`File`クラスのクラスメソッドではありません。