問題のコードは`ArgumentError: wrong number of arguments (5 for 0)`が発生します。

`super`と呼び出した場合は、現在のメソッドと同じ引数が引き継がれます。
引数を渡さずにオーバーライドしたメソッドを呼び出す際は`super()`とします。

問題のコードは次のように修正します。

修正後

```ruby
class S
  def initialize
    puts "S#initialize"
  end
end

class C < S
  def initialize(*args)
    super() # 引数なしを明示的に指定する
    puts "C#initialize"
  end
end
```
