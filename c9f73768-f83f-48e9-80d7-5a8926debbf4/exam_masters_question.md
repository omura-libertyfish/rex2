実行後の textfile.txt 内容になるようにXXXXに適切なコードを選べ。
ただし、空ファイルは作成済みである。

```ruby
File.open('testfile.txt', XXXX) do |f|
  f.write("recode 1\n")
  f.seek(0, IO::SEEK_SET)
  f.write("recode 2\n")
end
```

実行後の textfile.txt 内容

```ruby
recode 1
recode 2
```
