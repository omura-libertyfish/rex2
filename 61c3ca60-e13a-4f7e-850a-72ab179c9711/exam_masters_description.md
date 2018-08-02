正規表現のメタ文字において`a-z`とはaとzではなく、アルファベットのaからz全ての英小文字にマッチします。  
`[a-z]`だと英小文字`[abcdefghijklmnopqrstuvwxyz]`  
`[A-Z]`だと英大文字`[ABCDEFGHIJKLMNOPQRSTUVWXYZ]`  
`[0-9]`だと数字`[0123456789]`と同じ表現になります。  
`[]`で囲むと`[]`内のいずれかの1文字にマッチするという表現になります。
```ruby
puts /[a-z]/ === "a"	#=>　true
puts /[A-Z]/ === "A"	#=>　true
puts /[0-9]/ === "1"	#=>　true
puts /[あ-ん]/ === "う"	#=>　true
puts /[0-9]/ === 1	#=>　false
```
Integerクラスのオブジェクトとして比較すると`false`が返ります。クォートで囲いStringクラスのオブジェクトとして比較する必要があります。
