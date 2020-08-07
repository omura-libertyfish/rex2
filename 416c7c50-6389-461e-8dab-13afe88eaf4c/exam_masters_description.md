`IO.write`メソッドは第1引数に指定したファイルを開き、第2引数に指定した文字列の書き込みを行った後ファイル閉じます。第3引数で書き込み開始位置を指定できます。  
`IO.readlines`メソッドは引数に指定したファイルの内容を全て読み込み、各行を要素に持つ配列を返します。

```ruby
IO.write("readme.md", "Ruby\nExamination\n") # => ファイルreadme.mdに第2引数の文字列を書き込みファイルを閉じる
```

[readme.mdの内容]
```
Ruby
Examination

```

```ruby
IO.readlines("readme.md")                    # => ["Ruby\n", "Examination\n"]
```