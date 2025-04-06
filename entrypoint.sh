#!/bin/bash
set -e

# サーバーPIDファイルが残っていたら削除
rm -f /app/tmp/pids/server.pid

# DBが起動するまで待機
until pg_isready -h "$DATABASE_HOST" -U "$DATABASE_USER"; do
  echo "Waiting for postgres..."
  sleep 2
done

# DB作成・マイグレーション（初回）
bundle exec rails db:create db:migrate || true

# 最後にコマンドを実行
exec "$@"
