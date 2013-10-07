class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :title, null: false
      t.text   :questions, null: false, default: '[]'
    end
  end
end
