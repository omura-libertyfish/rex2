`String#%`はフォーマットされた文字列を返します。
フォーマットには、`"%d"`や`%s`などの指示子を用います。
`String#%`を用いると、指示子が引数の値で置換されます。

指示子の詳しい説明は[sprintf](https://docs.ruby-lang.org/ja/latest/method/Kernel/m/sprintf.html)を参照してください。

今回の問題では文字列`"Hello"`にフォーマットに必要な指示子が無いためそのまま出力されます。

指示子を付与すれば次のように表示されます。

```ruby
p "Hello%d" % 5 # => Hello5
```
