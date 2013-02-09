class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :key, :limit => 12, :null => false
      t.string :pno, :limit => 10, :null => false
      t.integer :group, :null => false
      t.integer :page, :default => 0
      t.boolean :completed, :default => false

      t.timestamps
    end
  end
end
