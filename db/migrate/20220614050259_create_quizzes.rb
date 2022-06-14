class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table    :quizzes do |t|
      t.integer     :title_id
      t.text        :question
      t.text        :answer1
      t.text        :answer2
      t.text        :answer3
      t.text        :answer4
      t.integer     :answer
      t.text        :description
      t.timestamps
    end
  end
end
