class AddRaceIdToCharacter < ActiveRecord::Migration
  def self.up
    add_column :characters, :race_id, :integer
  end

  def self.down
    remove_column :characters, :race_id
  end
end
