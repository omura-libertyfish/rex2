`Module.nesting`はネストの状態を表示します。

次のプログラムを実行すると、`[SuperMod]`と表示されます。

```ruby
module SuperMod
  p Module.nesting
end
```

モジュールがネストされた場合は、ネストの状態をすべて表示します。
ネストされたモジュールはプレフィックスに外側にあるモジュールが付与されます。
また、ネスト状態はすべて表示されますがネストが内側から順に表示されます。

```ruby
module SuperMod
  p Module.nesting #=> [SuperMod]

  module BaseMod
    p Module.nesting #=> [SuperMod::BaseMod, SuperMod]

    module BaseBaseMod
      p Module.nesting #=> [SuperMod::BaseMod::BaseBaseMod, SuperMod::BaseMod, SuperMod]
    end
  end
end
```

この問題では`[SuperMod::BaseMod, SuperMod]`が答えです。
