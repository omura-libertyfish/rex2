`String#split`は、引数の正規表現にマッチしたもので文字列を分解します。
例えば、カンマを使って`"Spring,Summer,Autumn,Winter"`を分解してみます。

```ruby
p "Spring,Summer,Autumn,Winter".split(/,/)

__END__
["Spring", "Summer", "Autumn", "Winter"]と分解されます。
```

また、`( )`があると、マッチしたものを含んだ結果を返してくれます。

```ruby
p "Spring,Summer,Autumn,Winter".split(/(,)/)

__END__
["Spring", ",", "Summer", ",", "Autumn", ",", "Winter"]とカンマを含めて分解されます。
```

問題ではハイフンを使って、文字列を分解しているので次の選択肢が答えです。

```ruby
["Apple", "-", "Banana", "-", "Lemon"]
```
