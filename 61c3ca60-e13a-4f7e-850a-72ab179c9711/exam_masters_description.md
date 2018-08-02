正規表現のメタ文字において`a-z`とはaとzではなく、アルファベットのaからz全ての英小文字にマッチします。  



| メタ文字 | 対応する文字 |  
| :-: | :-: |
| `[a-z]` | abcdefghijklmnopqrstuvwxyz |  
| `[A-Z]` | ABCDEFGHIJKLMNOPQRSTUVWXYZ |  
| `[0-9]` | 0123456789 |  
| `[あ-ん]` | あいえおかき...わをん |  


`[]`で囲むと`[]`内のいずれかの1文字にマッチするという表現になります。

```ruby
puts /[a-z]/ === "a"	#=>　true
puts /[A-Z]/ === "A"	#=>　true
puts /[0-9]/ === "1"	#=>　true
puts /[あ-ん]/ === "う"	#=>　true
puts /[0-9]/ === 1	#=>　false
```
Integerクラスのオブジェクトとして比較すると`false`が返ります。クォートで囲いStringクラスのオブジェクトとして比較する必要があります。
