class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table    :quizzes do |t|
      t.integer     :title_id,      null: false
      t.string      :question,      null: false
      t.string      :answer1,       null: false
      t.string      :answer2,       null: false
      t.string      :answer3,       null: false
      t.string      :answer4,       null: false
      t.integer     :answer,        null: false
      t.text        :description,   null: false

      t.timestamps
    end
  end
end
