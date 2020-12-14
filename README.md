# テーブル設計

## users テーブル

| Column      | Type    | Options     |
| ----------  | ------- | ----------- |
| email       | string  | null: false |
| password    | string  | null: false |
| nickname    | string  | null: false |
| age         | integer | null: false |

### Association

- has_many :memories
- has_many :comments

## records テーブル

| Column        | Type       | Options           |
| ------------  | ---------  | ----------------- |
| title         | string     | null: false       |
| content       | text       | null: false       |
| prefecture_id | integer    | null: false       |
| image         |            | ActiveStorage     |
| user          | references | foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column      | Type       | Options           |
| ----------  | ---------  | ----------------- |
| text        | text       | null: false       |
| user        | references | foreign_key: true |
| memory      | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :memory