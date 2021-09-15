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
- https://github.com/settings/developers で OAuth App を作成
  - Authorization callback URL に `http://localhost:3000/auth/github/callback` を設定する
- 発行された `GITHUB_CLIENT_ID`と `GITHUB_CLIENT_SECRET` を `.env` に追記
- `curl -u [your-github-account] https://api.github.com/orgs/nomlab/teams` を実行し，得られた team_id を `OAUTH_GITHUB_ALLOWED_ID` として `.env` に追記

## 機能

- ユーザの登録，編集，削除
- タスクの登録，編集，削除

## スクリーンショット

<img width="1440" src="https://user-images.githubusercontent.com/25548427/120592738-50c35e80-c479-11eb-9498-0d6ff6637682.png">
<img width="1440" src="https://user-images.githubusercontent.com/25548427/120592749-5325b880-c479-11eb-90a3-d71b54a1a0f0.png">