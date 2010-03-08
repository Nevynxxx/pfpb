class CreateCharacters < ActiveRecord::Migration
  def self.up
    create_table :characters do |t|
      t.string :name
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelegence
      t.integer :wisdom
      t.integer :charisma

      t.timestamps
    end
  end

  def self.down
    drop_table :characters
  end
end
