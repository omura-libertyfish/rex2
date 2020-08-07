`File.chmod`メソッドは引数に指定したファイルの属性を変更します。  
`File.delete`メソッドは引数に指定したファイルを削除します。削除に成功した場合は削除したファイルの数を返し、削除に失敗した場合はエラーが発生します。

```ruby
File.chmod(0755, "text.txt") # => text.txtファイルの属性を「書き込みができるのは自分のみ、自分以外は読み込みのみ可能」に変更
```

```ruby
# 削除成功
File.delete("text_1.txt", "text2.txt") # => 2

# 削除失敗
File.delete("text_1.txt") # => Errno::ENOENT (No such file or directory @ apply2files - text1.txt)
```

`File.pwd`メソッドと`File.home`メソッドは`File`クラスには存在しません。