class CreateCards < ActiveRecord::Migration
  def self.up
    create_table :cards do |t|
      t.text :question, :null => false
      t.text :answer, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :cards
  end
end
