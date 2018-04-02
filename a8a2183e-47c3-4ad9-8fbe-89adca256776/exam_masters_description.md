クラス変数はレキシカルに決定されますが、定数と同じスコープです。

```ruby
module M
  CONST = 100
  @@val = 200
end

module M
  p CONST # 100 と表示されます
  p @@val # 200 と表示されます
end
```

ただし、クラス変数は上位のスコープ（外側）まで探索は行いません。

```ruby
module M
  CONST = 100
  @@val = 200
end

module M
  class C
    p CONST # 100 と表示されます
    p @@val # NameError
  end
end
```

また、`Module#<`はクラスの継承関係を比較することが出来ます。
継承をしているように見えますが、if文では継承関係を比較しています。

`Module#<`はレシーバーが引数の子孫である場合に`true`を返します。

問題にあるクラス変数はそれぞれ次のように計算されます。

```ruby
module M
  @@val = 75

  class Parent
    @@val = 100
  end

  class Child < Parent
    @@val += 50 # @@val = 100 + 50
  end

  if Child < Parent
    @@val += 25 # @@val = 75 + 25
  else
    @@val += 30 # @@val = 75 + 30
  end
end

p M::Child.class_variable_get(:@@val)
```

この問題は`150`が表示されます。
