`do ... end`と`{ ... }`を比べた場合、`{ ... }`の方が結合度が強いです。

問題の式の場合、`do ... end`の結合度が弱いため、`p([1, 2, 3, 4].map)`が評価されます。
問題のように式の内容を直接使用する際は、`{ ... }`を使用します。
