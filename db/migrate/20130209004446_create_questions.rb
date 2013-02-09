class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :page
      t.text :text
      t.text :values

      t.timestamps
    end
  end
end
