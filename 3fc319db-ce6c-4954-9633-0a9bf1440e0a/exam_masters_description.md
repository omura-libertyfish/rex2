`freeze`はオブジェクトの破壊的な変更を禁止します。
問題では配列の破壊的な変更を禁止しますので、次のプログラムでは例外が発生します。

```ruby
array = ["a", "b", "c"].freeze
array << "d" # 例外発生

p array
```

`map!`はレシーバーの配列を更新します。次のプログラムでは、`map!`で内容を変更した後でもオブジェクトIDは同じです。

```ruby
array = ["a", "b", "c"]
mapper = array.map!{|content| content.succ}

p array.__id__ #=> 70361769061320
p mapper.__id__ #=> 70361769061320
```

`freeze`はオブジェクトの破壊的な変更を禁止していますので、`map!`を実行すると例外が発生します。
