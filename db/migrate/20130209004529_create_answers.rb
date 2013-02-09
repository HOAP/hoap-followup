class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :participant_id
      t.integer :question_id
      t.integer :page
      t.text :value

      t.timestamps
    end
  end
end
