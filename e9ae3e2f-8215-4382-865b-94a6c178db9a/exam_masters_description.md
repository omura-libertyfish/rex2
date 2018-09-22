モジュールをレシーバーにして、メソッドを呼び出すには`Kernel#extend`を利用します。

`Kernel#extend`は特異クラスへモジュールをインクルードします。モジュールParentにあるメソッドを呼び出す必要がありますので次の選択肢が答えのひとつになります。

```ruby
module Parent
  def method_1
    __method__
  end
end

module Child
  extend Parent
end

p Child::method_1
```

また、`Kernel#extend`はモジュールの継承関係も含めてメソッド探索の対象になります。そのため、モジュールParentをインクルードしたあとで`Kernel#extend`を呼び出すことでメソッドを呼び出すことができます。

```ruby
module Parent
  def method_1
    __method__
  end
end

module Child
  include Parent
  extend self
end

p Child::method_1
```

ただし、`Kernel#extend`は呼び出した時点のモジュール継承関係がコピーされますので、その後でモジュールをインクルードして継承関係を更新してもメソッドを見つけることができません。