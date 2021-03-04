`inspect`は Object クラスに定義されており,`String`,`Array`,`Hash`などのクラスにオーバーライドされています。レシーバーを文字列などに変換して表示してくれるためデバックなどに用いられます。
また、今回の設問のようにインスタンスオブジェクトに対して`inspect`メソッドを呼ぶことでインスタンス変数の値を表示することができます。

`p`メソッドには`inspect`メソッドが用いられているため選択肢`puts foo.inspect`と同じ出力になります。

```ruby
class Foo
  def initialize
    @num = 3
  end
end

sample = Foo.new
p sample
puts sample.inspect

#<Foo:0x00007fc2828f4700 @num=3>
#<Foo:0x00007fc2828f4700 @num=3>
```
