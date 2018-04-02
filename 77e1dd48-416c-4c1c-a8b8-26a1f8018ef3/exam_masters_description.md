`Module.nesting`はネストの状態を表示します。

次のプログラムを実行すると、`[SuperMod]`と表示されます。

```ruby
module SuperMod
  p Module.nesting
end
```

モジュールがネストされた場合は、ネストの状態をすべて表示します。
`SuperMod::BaseMod`のようにプログラムを書くとモジュール`SuperMod`の内側にモジュール`BaseMod`があることを表現することが出来ます。
インデントして別々に書いた場合に比べて、プレフィックスがある場合は内側にあるモジュールしかネストの状態は表示されません。

```ruby
module SuperMod
  p Module.nesting # [SuperMod]
end

module SuperMod
  module BaseMod
    p Module.nesting # [SuperMod::BaseMod, SuperMod]
  end
end

module SuperMod::BaseMod
  p Module.nesting # [SuperMod::BaseMod]
end
```

この問題は`[SuperMod::BaseMod]`が表示されます。
