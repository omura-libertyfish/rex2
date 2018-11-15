ハッシュのキーにオブジェクトを指定する問題です。

ハッシュはキーにシンボルと文字列以外を指定して値を格納することもできます。
問題では、Classクラスのオブジェクトをキーに100を格納しています。

```ruby
klass = Class.new

hash = {klass => 100}

puts hash #=> {#<Class:0x007f9a3f0a7068>=>100}
```

また、選択肢のうちキーを`:klass`とするとこれはシンボルになります。
変数`klass`に格納されたClassクラスのオブジェクトをキーに指定していることにはなりません。

よって、次の選択肢が解答になります。

```ruby
klass = Class.new

hash = {}
hash.store(klass, 100)

puts hash[klass]
```

```ruby
klass = Class.new

hash = Hash[klass, 100]

puts hash[klass]
```