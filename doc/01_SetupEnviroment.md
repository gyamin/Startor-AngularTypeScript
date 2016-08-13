# 環境構築

## 前提
開発環境は、以下の環境とする。

| 種別 | バージョン | 備考 |
| --- | --- | --- |
| NodeJs        | v5.12.x | |
| TypeScript    | 1.8.x | |


## 概要
TypeScriptを利用したwebフロント開発環境を構築する。
JavaScriptライブラリ(jQueryなど)をTypeScriptで開発するための型定義ファイルは、Typingsを利用し導入する。
JavaScript、CSSなどのフロントライブラリは、bowerを利用して管理する。

## npmパッケージのインストール

### TypeScriptのインストール
```
$ npm install -g typescript
...
└── typescript@1.8.10 
```

### Typingsインストール

```
$ npm install typings -g
```

### bowerインストール
```
$ npm install -g bower
```

### gulpインストール
```
$ npm install --global gulp-cli
$ npm install gulp --save-dev
```


## アプリケーションの作成

## アプリケーションディレクトリ作成
```
$ mkdir app
$ cd app/
```

### bowerによるフロントライブラリのインストール

```
$ bower install jQuery#2.2.4 --save
$ bower install angular#1.5.8 --save
```

### Typingsによる型定義の導入
+ 設定ファイルの初期化
    ```
    $ typings init
    $ ls -a
    typings.json
    ```

+ 定義取得
    ```
    $ typings install dt~jquery --save --global
    jquery
    └── (No dependencies)
    $ typings install dt~angular --save --global
    typings INFO reference Stripped reference "https://raw.githubusercontent.com/DefinitelyTyped/DefinitelyTyped/12ede35d5b3d5d5595ce6edf41f6f1a96ea33d1f/jquery/jquery.d.ts" during installation from "angular" (main)
    angular
    └── (No dependencies)
    ```

### gulpによるタスクの設定

+ gulpのタスク方針
    + bowerで管理されるファイルを、gulpを利用して公開ディレクトリに配置する。
    + TypeScript, SCSSファイルをgulpでコンパイルし、公開ディレクトリに配置する。

+ gulpに必要なパッケージをインストールする
```
$ npm install gulp-typescript --save-dev
$ npm install main-bower-files --save-dev
```

