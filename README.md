# rask

## 環境構築

前提条件： 端末上で Docker が使用できること

```
    # コンテナの起動
    make up
    
    # 依存関係のインストール，データベースのマイグレーション
    make setup
    
    # サーバ起動
    make start
    
    # テスト実行
    make rails-test
```

ログイン機能のセットアップ
- 環境変数管理用ファイルをコピー `cp .env.example .env`
- `GITHUB_CLIENT_ID`と `GITHUB_CLIENT_SECRET` を各自で準備して入力

## 機能

- ユーザの登録，編集，削除
- タスクの登録，編集，削除

## スクリーンショット

<img width="1440" src="https://user-images.githubusercontent.com/25548427/120592738-50c35e80-c479-11eb-9498-0d6ff6637682.png">
<img width="1440" src="https://user-images.githubusercontent.com/25548427/120592749-5325b880-c479-11eb-90a3-d71b54a1a0f0.png">