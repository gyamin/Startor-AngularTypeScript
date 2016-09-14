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
タスクランナーはgulpを利用せず、npm-scriptを利用する。

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

## アプリケーションの作成

## アプリケーションディレクトリ作成
```
$ mkdir app
$ cd app/
```

### npmによるライブラリのインストール
```
$ npm install bower --save
$ npm install typings --save
$ npm install node-sass --save
$ npm install watch --save
```

### bowerによるフロントライブラリのインストール
```
$ ./node_modules/bower/bin/bower install jQuery#2.2.4 --save
$ ./node_modules/bower/bin/bower install angular#1.5.8 --save
$ ./node_modules/bower/bin/bower install bootstrap#3.3.7 --save
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
    $ typings install dt~bootstrap --save --global
    typings INFO reference Stripped reference "https://raw.githubusercontent.com/DefinitelyTyped/DefinitelyTyped/1f0791147c6c145227b1778bb26781a79d516917/jquery/jquery.d.ts" during installation from "bootstrap" (main)
    bootstrap
    └── (No dependencies)
    ```

### npm-scriptの設定
npm-scriptを利用し、typescriptのコンパイル、scssのコンパイルを行う。

+ npm-scriptsとは     
package.jsonのscriptフィールドに利用したいシェルコマンドを記述することで、npm run 定義でscriptが実行できるようになる。
今回は、gulpの代わりに、ビルドなどのタスクを設定する用途で利用する。
    1. package.json のscriptフィールドにコマンドを記述する
        ```
          "scripts": {
            "build:bower": "cp ./bower_components/angular/angular$npm_package_config_postfix.js ./dist/js/lib/"
          },
          "config": {
            "postfix": ".min"
          },
        ```
    2. 設定したスクリプトを実行する   
        `npm run 定義名` でscriptを実行できる。
        ```
        $ npm run build:bower
        
        > app@1.0.0 build:bower /Users/.../Develop/Repos/starter-AngularTypeScript/app
        > cp ./bower_components/angular/angular$npm_package_config_postfix.js ./dist/js/lib/
        ```

+ bowerライブラリ
    + app/bin/build_bower.sh    
    bowerでインストールされたライブラリをdist/css/lib, dist/js/libにコピーする。

+ typescirptソース   
  + app/bin/build_ts.sh         
    tscコマンドを実行することで、tsconfig.jsonの設定を読み込みコンパイルする。

+ scssソース   
    + app/bin/build_sass.sh     
    node-sassを利用してコンパイルを行う。https://github.com/sass/node-sass の Command Line Interface を参照。


## 開発関連パッケージの取得(gitリポジトリをcloneした場合)
+ typescript、bowerなどglobalにインストールが必要なnpmパッケージをインストールする    
    ※./node_modules内の実行ファイルを呼び出すことで、globalにインストールされていなくても、実行は可能。npm scriptでは、node_modules内の実行ファイルを指定している。

+ xxx.jsonに従って、パッケージをインストールする
    ```
    $ npm install
    $ bower install
    $ typings install
    ```

+ typescript/sassのビルド先ディレクトリを作成する
    ```
    $ mkdir -p dist/css
    $ mkdir -p dist/js
    ```