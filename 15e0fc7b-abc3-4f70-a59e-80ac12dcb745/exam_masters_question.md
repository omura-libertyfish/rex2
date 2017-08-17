次のコードを実行するとどうなりますか
```
# list.txt
1
2
3
4
```
```ruby
io = File.open('list.txt')

while not io.eof?
  io.readlines
  io.seek(0, IO::SEEK_CUR)
  p io.readlines
end
```
