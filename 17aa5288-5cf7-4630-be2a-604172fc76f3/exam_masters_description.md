`super`を実行した場合にもRefinementが影響します。理解しやすいようにそれぞれのメソッドにコメントと計算の途中結果を追加しました。

```ruby
class C
end

module M
  refine C do
    def m1(value)
      p "define m1 using Refinement"
      super value - 100 # 300 - 100
    end
  end
end

class C
  def m1(value)
    p "define m1 in C"
    value - 100 # 200 - 100
  end
end

using M # ここからRefinementが有効になる

class K < C
  def m1(value)
    p "define m1 in K"
    super value - 100 # 400 - 100
    # Refinementが有効なのでsuperはモジュールMにあるm1を参照する
  end
end

puts K.new.m1 400
```

プログラムを実行するとコメントは次の順に表示されます。

1. `"define m1 in K"`
1. `"define m1 using Refinement"`
1. `"define m1 in C"`

`super`を実行したクラスの親クラスにRefinemnetがあれば同名のメソッドを探索して実行します。  
さらに、Refinementのなかで`super`を実行するとRefinementの対象クラスのメソッドを探索します。
