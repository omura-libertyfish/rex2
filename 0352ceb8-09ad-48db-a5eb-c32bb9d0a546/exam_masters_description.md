問題では`Foo`クラスにクラス変数`@@var`が定義されています。  
クラス変数は継承されたクラスにも反映されるので、そのクラス変数が定義されているクラスとそのサブクラスの全インスタンスで共有されます。  
`Foo`クラスのインスタンス`foo`と`Foo`クラスを継承している`Bar`クラスのインスタンス`bar`で`@@var`の値を参照・更新しています。  
`foo`, `bar`では`Foo`クラスの`@@var`は共有され実行結果は`3/3`となります。