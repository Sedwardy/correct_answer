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

## Quizzesテーブル
|      Column        |   Type   |   Options   |
|--------------------|----------|-------------|
|      title_id      | integer  | null: false |
|      question      |   text   | null: false |
|      answer1       |   text   | null: false |
|      answer2       |   text   | null: false |
|      answer3       |   text   | null: false |
|      answer4       |   text   | null: false |
|       answer       | integer  | null: false |
|    description     |   text   | null: false |



### Association
- has_one  :answer_histories
- has_many :


## Categoriesテーブル
|      Column        |   Type   |   Options   |
|--------------------|----------|-------------|
|        name        |  string  | null: false |
|        sort        |  integer | null: false |


### Association
- belongs_to :


## Sub_categoriesテーブル
|      Column        |   Type   |   Options   |
|--------------------|----------|-------------|
|   categories_id    | integer  | null: false |
|       name         |  string  | null: false |
|       sort         | integer  | null: false |

### Association
- belongs_to :
- has_many   :


## Titlesテーブル
|      Column        |   Type   |   Options   |
|--------------------|----------|-------------|
|  sub_categories_id |  integer | null: false |
|       title        |  string  | null: false |
|     description    |   text   | null: false |

### Association 
- belongs_to :questions

## Categoriesテーブル
|      Column        |   Type   |   Options   |
|--------------------|----------|-------------|
|        name        |   text   | null: false |
|        sort        |  integer | null: false |
### Association 
-

## Sub categoriesテーブル
|      Column        |   Type   |   Options   |
|--------------------|----------|-------------|
|    category_id     |  integer | null: false |
|        name        |   text   | null: false |
|        sort        |  integer | null: false |

### Association 
-

## Titlesテーブル
|      Column        |   Type   |   Options   |
|--------------------|----------|-------------|
|  sub_category_id   |  integer | null: false |
|       title        |  string  | null: false |
|     description    |   text   | null: false |
|     thumbnail      |  string  | null: false |

### Association 
-

## Answer historiesテーブル
|      Column        |   Type   |   Options   |
|--------------------|----------|-------------|
|      quiz_id       |  integer | null: false |
|      answer        |  integer | null: false |
### Association 
-





