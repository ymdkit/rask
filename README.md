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
```

## 機能

- ユーザの登録，編集，削除
- タスクの登録，編集，削除