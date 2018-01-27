クラス`Object`にメソッドを定義すると特異クラスでもそのメソッドを利用することが出来ます。
問題のプログラムを順に実行すると、答えは`"5"`になります。

補足　`Object#const_succ`について
内部で`String#succ!`を実行しています。このメソッドはレシーバーの文字列を次の文字列へ進めます。
この問題ですと、`"1"`→`"2"`・・・と1ずつ繰り上がります。
また、定数に対して行っていますが破壊的メソッドの呼び出しですので再代入にはならず警告は表示されません。


```ruby
class Object
  CONST = "1"
  def const_succ
    CONST.succ!
  end
end

class Child1
  const_succ # "2"になる
  class << self
    const_succ # "3"になる
  end
end

class Child2
  const_succ # "4になる"
  def initialize
    const_succ
  end
end

Child1.new # "4"のまま
Child2.new # "5"になる

p Object::CONST
```
