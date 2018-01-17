次のプログラムは"Hello, world"と表示します。
同じ結果になる選択肢はどれですか（複数選択）

```
module M
  CONST = "Hello, world"

  class C
    def awesome_method
      CONST
    end
  end
end

p M::C.new.awesome_method
```
