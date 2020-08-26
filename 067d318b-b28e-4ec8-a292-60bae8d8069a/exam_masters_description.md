`File.chmod`メソッドは引数に指定したファイルのモードを変更します。  
`File.delete`メソッドは引数に指定したファイルを削除します。削除に成功した場合は削除したファイルの数を返し、削除に失敗した場合はエラーが発生します。

```ruby
File.chmod(0644, "text.txt")
# => text.txtファイルのモードを「所有者は読み書き可能で実行不可能」「所有グループとその他は読み込みのみ可能で書き込みと実行は不可能」に変更
```

```ruby
# 削除成功
File.delete("text_1.txt", "text2.txt") # => 2

# 削除失敗
File.delete("text_1.txt") # => Errno::ENOENT: No such file or directory @ unlink_internal - text_1.txt
```

`File.pwd`メソッドと`File.home`メソッドは`File`クラスには存在しません。