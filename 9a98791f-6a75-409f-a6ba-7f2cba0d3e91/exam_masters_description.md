`Object#eql?`メソッドはレシーバと引数の同値性を検証します。  
`Object#equal?`メソッドはレシーバと引数のオブジェクトIDを比較し同一性を検証します。  
一致すれば`true`一致しなければ`false`を返します。

Rubyでは全てがオブジェクトとして扱われるため例1のコードのように同じリテラルでもオブジェクトIDは異なります。

**例1**

```ruby
# 実行環境によってidは異なります
String.new.object_id # => 70135176141780
String.new.object_id # => 70135176158660
Array.new.object_id  # => 70135176335980
Array.new.object_id  # => 70135176317780
{ a: 1 }.object_id   # => 70135176352080
{ a: 1 }.object_id   # => 70210531493560
```

`eql?`は同値性、`equal?`は同一性を検証するので実行結果は例2のように`String`クラスの同じリテラルでもそれぞれ別のオブジェクトとなるので`equal?`メソッドの場合は`false`を返します。

**例2**

```ruby
str1 = "a"
str2 = "a"

str1.eql?(str2)   # => true
str1.equal?(str2) # => false
```

例外として下記クラスのインスタンスは、同じリテラルであれば同一のオブジェクトとなるためオブジェクトIDは同じです。

同一リテラルは同一オブジェクトとみなされるクラス
- `TrueClass`
- `FalseClass`
- `NilClass`
- `Symbol`
- `Fixnum`
- `Float`

```ruby
true.equal?(true)   # => true
false.equal?(false) # => true
nil.equal?(nil)     # => true
:a.equal?(:a)       # => true
1.equal?(1)         # => true
3.14.equal? 3.14    # => true
```

`Enumerable#inject`メソッドは、レシーバの要素に対して引数で指定した処理を行います。  
`Enumerable#collect`メソッドは、レシーバの各要素に対して引数で指定した処理を行なった結果を含む配列を返します。

```ruby
[1, 2, 3].inject(:+)                 # => 6
[1, 2, 3].inject(0) { |x, y| x + y } # => 6
[1, 2, 3].collect(&:to_s)            # => ["1", "2", "3"]
[1, 2, 3].collect { |n| n + 1 }      # => [2, 3, 4]
```