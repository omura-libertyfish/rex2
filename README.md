# REx（[ruby-license](https://github.com/libertyfish-co/ruby-license)）試験問題リポジトリ

## 使い方

### テンプレート作成

テンプレート作成は、rakeタスクを利用します。  

```
$ rake template:create
Markdown files are located in 9fd30e11-4b57-4354-bef2-7a36877fe364
```
UUIDで名前付けしたディレクトリに試験問題に必要なマークダウンファイルが作成されます。

```
9fd30e11-4b57-4354-bef2-7a36877fe364
+-- default.yml
+-- exam_masters_question.md
+-- exam_masters_description.md
+-- option_masters_sentence_1.md
+-- option_masters_sentence_2.md
+-- option_masters_sentence_3.md
+-- option_masters_sentence_4.md
```

#### default.yml

試験問題の設定ファイルです。

```
---
exam_type: silver
work_in_progress: false
answer:
  - 1
  - 4
```

- exam_type  
問題種別を表します。siliverもしくはgoldを指定してください。  
silver、gold以外の文字列が指定された場合は例外が発生します。

- work_in_progress  
試験問題が作成中かを表します。trueもしくはfalseを指定してください。  
true、false以外の文字列が指定された場合は例外が発生します。

- answer
解答の選択肢を表します。選択肢のマークダウンファイルのインデックスを指定してください。  
option_masters_sentence_1.mdが解答であれば1です。また、配列であることを期待します。

#### exam_masters_question.md

試験問題の問題文になります。

#### exam_masters_description.md

試験問題の解説になります。

#### option_masters_sentence_X.md

試験問題の選択肢になります。このファイルは4つ作成されます。

### テンプレートチェック

テンプレートの設定ファイルが正しく設定されているかチェックします。

```
$ rake # or rake template:check
```
