実行後の textfile.txt 内容になるようにXXXXに適切なコードを選べ

```ruby
open('textfile.txt', XXXX) do |f|
  data = f.read.upcase
  f.rewind
  f.puts data
end
```

実行前の textfile.txt 内容

```ruby
recode 1
recode 2
recode 3
```

実行後の textfile.txt 内容

```ruby
RECODE 1
RECODE 2
RECODE 3
```
