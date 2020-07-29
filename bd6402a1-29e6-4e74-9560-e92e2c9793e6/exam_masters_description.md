`String#scan`メソッドはレシーバに対して引数で指定したパターンにマッチした部分文字列を配列で返します。  
引数には、文字列や正規表現も指定可能でブロックを渡すこともできます。

```ruby
"Ruby Examination".scan("xa")                    # => ["xa"]
"Ruby Examination".scan("xa") { |s| p s.upcase } # => "XA"
"Ruby Examination".scan(/../)                    # => ["Ru", "by", " E", "xa", "mi", "na", "ti", "on"]
```