`..`, `...`は範囲オブジェクトを生成します。
`..`は終端を含み、`...`は終端を含みません。
範囲にマイナスを指定する事で後ろの要素から指定することができます。

**例**

```ruby
puts "abc"[0..2] # => abc
puts "abc"[0...2] # => ab
puts "abc"[0..-2] # => ab
```