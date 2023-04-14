# テーブル設計

## usersテーブル

| Column                | Type   | Option      | 
| --------------------- | ------ | ----------- | 
| nickname              | string | null: false | 
| email                 | string | null: false | 
| password              | string | null: false | 
| password_confirmation | string | null: false | 

### Association

- has many :meals

## mealテーブル

| Column        | Type    | Option      | 
| ------------- | ------- | ----------- | 
| food_name     | string  | null: false | 
| protein       | integer | null: false | 
| fat           | integer | null: false | 
| carbohydrates | integer | null: false | 

- belongs_to :user 