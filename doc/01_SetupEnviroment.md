# 環境構築

## 前提
開発環境は、以下の環境とする。

| 種別 | バージョン | 備考 |
| --- | --- | --- |
| NodeJs        | v5.12.x | |
| TypeScript    | 1.8.x | |

## TypeScriptのインストール

```
$ npm install -g typescript
...
└── typescript@1.8.10 
```

## アプリケーションの作成

+ アプリケーションディレクトリ作成
```
$ mkdir app
$ cd app/
```

+ package.jsonの作成
```
$ npm init
...
```

+ 依存パッケージのインストール
```
$ npm install -save angular
app@1.0.0
└── angular@1.5.8 
$ npm install -save-dev typescript
app@1.0.0
└── typescript@1.8.10 
```

## npm-serverをインストールし、ローカルからwebソースを参照できるようにする
+ パッケージインストール
```
$ npm install http-server --save-dev
npm WARN prefer global http-server@0.9.0 should be installed with -g
```

+ http serverの起動
```
$ ./node_modules/.bin/http-server -a localhost -p 8080
Starting up http-server, serving ./
Available on:
  http://localhost:8080
```