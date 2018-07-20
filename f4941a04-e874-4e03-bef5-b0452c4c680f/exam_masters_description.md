Singletonモジュールをインクルードすると、クラスメソッド`instance`を定義します。  
このメソッドを呼び出すことでクラスのインスタンスを１つだけ返します。

```ruby
require 'singleton'

class Message
  include Singleton

  def morning
    'Hi, good morning!'
  end
end

p Message.instance.__id__ # 70163722811160
p Message.instance.__id__ # 70163722811160
```

オブジェクトIDがすべて同じ値を返していることから、インスタンスが１つだけ返していることがわかる。
選択肢にある`instantize`、`object`、`singleton`はSingletonモジュールをインクルードしても定義されません。
