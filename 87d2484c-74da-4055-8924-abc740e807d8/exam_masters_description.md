`Object.singleton_class`を利用すると特異クラスを取得することが出来ます。

特異クラスで`self`を参照するとレシーバのオブジェクトがとれます。この選択肢では、クラス`C`が取得できます。

また、特異クラス定義では新しくスコープが作られますので次のプログラムでは例外が発生します。

```ruby
class C
  def self._singleton
    class << C
      val = self # 特異クラスのみ有効なローカル変数
    end
    val
  end
end

p C._singleton
```
