class CreateDecks < ActiveRecord::Migration
  def self.up
    create_table :decks do |t|
      t.string :title, :null => false

      t.timestamps
    end
    deck = Deck.create :title => 'Default'
    add_column :cards, :deck_id, :integer, :null => false, :default => deck.id
  end

  def self.down
    remove_column :decks, :deck_id
    drop_table :decks
  end
end
