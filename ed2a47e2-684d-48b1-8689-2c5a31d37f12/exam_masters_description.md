`Dir.delete`, `Dir.rmdir`は空のディレクトリを削除します。ディレクトリの削除に成功すると`0`を返します。引数に削除対象のディレクトリのパスを文字列で指定します。  
削除に失敗するとエラーを返します。

```ruby
# 削除成功
Dir.delete("RubyExamination") # => 0
Dir.rmdir("RubyExamination")  # => 0

# 削除失敗(ディレクトリが空ではない場合)
Dir.delete("RubyExamination") # => Errno::ENOTEMPTY (Directory not empty @ dir_s_rmdir - RubyExamination)
Dir.rmdir("RubyExamination")  # => Errno::ENOTEMPTY (Directory not empty @ dir_s_rmdir - RubyExamination)
```