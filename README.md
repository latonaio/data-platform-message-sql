# data-platform-message-sql
data-platform-message-sql は、data-platform-messageの稼働に関連して、メッセージ の SQLテーブル を作成するためのレポジトリです。  

# 動作環境
data-platform-message-sql は、Kubernetes上での動作を前提としています。Kubernetesの環境構築後に起動してください。  

# sqlの設定ファイル
data-platform-message-sql には、sqlの設定ファイルとして以下のsqlファイルが含まれています。  

* data-platform-message-sql-header-data.sql （データ連携基盤 メッセージ - ヘッダデータ）

# MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法  
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
