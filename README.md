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
- has_many :questions
- has_many :challengers


## Challengersテーブル
|      Column        |   Type   |   Options   |
|--------------------|----------|-------------|
|      quiz_id       |references| null: false, foreign_key :true|
|      nickname      |  string  | null: false |
|       score        |  integer | null: false |

### Association
- belongs_to :quizzes


## Questionsテーブル
|      Column        |   Type   |   Options   |
|--------------------|----------|-------------|
|      quiz_id       |references| null: false, foreign_key :true|
|       body         |   text   | null: false |

### Association
- belongs_to :quizzes
- has_many   :choices


## Choicesテーブル
|      Column        |   Type   |   Options   |
|--------------------|----------|-------------|
|    question_id     |references| null: false, foreign_key :true|
|       body         |   text   | null: false |
|   correct_answer   |  integer | null: false |

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
|       title        |   text   | null: false |
|     description    |   text   | null: false |
|     thumbnail      |   text   | null: false |

### Association 
-

## Answer historiesテーブル
|      Column        |   Type   |   Options   |
|--------------------|----------|-------------|

### Association 
-





