# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# データベース設計

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false, primary_key: true|
|name|String|null: false, unique: true,index:true|
|e-mail|text|null: false|
|password|text|null: false|

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false, primary_key: true|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false, primary_key: true|
|group_name|String|null: false, unique: true|
|user_id|integer|null: false, foreign_key: true|

## membersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- has_many :groups, through:members
- has_many :users, through:members
- has_many :messages
- belongs_to :group
- belongs_to :user

