Rubyでは`%`から始まる形式の「%記法」を用いて文字列リテラル、シンボル、正規表現リテラルや配列などを表現できます。  
文字列リテラルや正規表現リテラルを扱う場合、通常は`"`や`/`などリテラル毎に記述する必要がありますが、%記法を用いることでそれら記述を減らすことができるメリットがあります。　　  
また`%w`や`%W`を使って簡潔に配列を表現できます。配列を表現する場合、要素間の区切りは空文字を使用します。

```ruby
p %(a b c)  # => "a b c"
p %W(a b c) # => ["a", "b", "c"]
p %s(a)     # => :a
```