class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :answer
      t.bigint :user_id
      t.bigint :question_id

      t.timestamps
    end
    add_index :answers, :user_id
    add_index :answers, :question_id
    add_index :answers, [:question_id, :user_id]
  end
end
