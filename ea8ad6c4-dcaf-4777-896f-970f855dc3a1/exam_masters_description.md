クラス`Inherited`の親クラス`Base`がどのように決定されるかがこの問題のポイントです。
クラスはRubyでは定数です。定数の探索はレキシカルスコープを利用します。

親クラス`Base`の探索はモジュール`Scope`から始まります。
レキシカルスコープにクラス（定数）`Base`が見つかったので、クラス`Inherited`の親クラス`Base`は`Scope::Base`となります。

```ruby
class Base
  def name
    p 'Base#name'
  end
end

module Scope
  class Base
    def name
      p 'Scope::Base#name'
    end
  end

  class Inherited < Base # クラスScope::Baseとして解釈される
    def name
      p 'Scope::Inherited#name'
      super
    end
  end
end
```

もし、クラス`Base`がクラス`Inherited`より前に定義されていないのであれば動作が変わります。
継承を定義した時点で`Scope::Base`をRubyは見つけることができないので、親クラス`Base`はトップレベルにあるクラスを参照します。

```ruby
class Base
  def name
    p 'Base#name'
  end
end

module Scope
  class Inherited < Base # トップレベルにあるクラスBaseとして解釈される
    def name
      p 'Scope::Inherited#name'
      super
    end
  end

  class Base
    def name
      p 'Scope::Base#name'
    end
  end
end

inherited = Scope::Inherited.new
inherited.name

# 結果は次の通り
# "Scope::Inherited#name"
# "Base#name"
```
