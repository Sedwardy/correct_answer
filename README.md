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
|    creator_name    |  string  | null: false |

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



