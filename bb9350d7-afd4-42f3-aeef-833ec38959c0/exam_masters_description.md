クラスはサブモジュールを継承ツリーに追加するには条件があります。

サブモジュールを含めるには、クラスにインクルードする前にサブモジュールを継承ツリーに追加する必要があります。  
次のサンプルプログラムでは、クラスCにモジュールM1をインクルードする前に、サブモジュールM2を継承関係に含めているのでメソッドを呼び出すことができます。

```ruby
module M1
  def method_1
    __method__
  end
end

module M2
  def method_2
    __method__
  end
end

module M1
  include M2
end

class C
  include M1 # モジュールM2が既に継承関係にある
end

p C.new.method_1 # method_1と表示される
p C.new.method_2 # method_2と表示される
```

問題のプログラムでは、メソッドmethod_2は継承ツリーにモジュールM2がないため呼び出すことができず、例外が発生します。  
サブモジュールをモジュールの継承ツリーに追加してもクラスCの継承ツリーは更新されません。

```ruby
module M1
  def method_1
    __method__
  end
end

class C
  include M1
end

p C.new.method_1

module M2
  def method_2
    __method__
  end
end

module M1
  include M2 # サブモジュールM2を追加しても、クラスCの継承ツリーは更新されない
end

p C.ancestors # [C, M1, Object, Kernel, BasicObject] と表示される
```