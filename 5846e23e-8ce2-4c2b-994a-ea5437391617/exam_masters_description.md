Ruby 2.1からRefinementが導入されました。
オープンクラスによる影響をローカルにとどめる為にRefinementがあります。

Refinementは`Module#refine`を呼び出すことで定義することが出来ます。
`Module#using`で定義したRefinementを有効化することができます。

この問題では有効化した後ですので、メソッドを読んでもエラーにならずに`100`が表示されます。
