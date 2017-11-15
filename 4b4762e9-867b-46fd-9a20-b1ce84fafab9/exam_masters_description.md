同じメソッドに対してRefinementで再定義を2つのモジュールで行っています。
もし、`using`を2行書いたとしても1つのメソッドで有効になる再定義は1つだけです。
最後に書いた`using`から優先されます。

この問題では`using R2`が最後に有効化されたRefinementです。
有効になる再定義は1つだけですので、モジュール`R2`にある`super`はクラス`C`にある`m1`を呼び出します。
よって、`super + 100`は`100 + 100`となり`200`が表示されるのが正解です。

一方で、`using R1`に書いた内容はすべて無効になったかというとそういうわけではありません。
次のサンプルコードだとモジュール`R2`に`m2`が定義されていなくても呼び出すことが出来ます。

```ruby
class C
  def m1(value)
    100 + value
  end

  def m2(value)
    value + ", world"
  end
end

module R1
  refine C do
    def m1
      super 50
    end

    def m2
      super "Hello"
    end
  end
end

module R2
  refine C do
    def m1
      super 100
    end
  end
end

using R1
using R2

puts C.new.m1 # 200 が表示される
puts C.new.m2 # "Hello, world" が表示される
```
