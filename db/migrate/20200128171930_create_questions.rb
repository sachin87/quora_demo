class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.bigint :user_id
      t.bigint :topic_id

      t.timestamps
    end
    add_index :questions, :user_id
    add_index :questions, :topic_id
    add_index :questions, [:topic_id, :user_id]
  end
end
