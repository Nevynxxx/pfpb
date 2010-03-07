class CreateRaces < ActiveRecord::Migration
  def self.up
		create_table :races do |t|
      t.column :name, :string
      t.column :str_mod, :integer, :default => 0
      t.column :dex_mod, :integer, :default => 0
      t.column :con_mod, :integer, :default => 0
      t.column :int_mod, :integer, :default => 0
      t.column :wis_mod, :integer, :default => 0
      t.column :cha_mod, :integer, :default => 0
      t.column :any, :boolean, :default => false
    end
    Race.create(:name=>"Dwarf",:con_mod=>2,:wis_mod=>2,:cha_mod=>-2)
    Race.create(:name=>"Elf",:dex_mod=>2,:con_mod=>-2,:int_mod=>2)
    Race.create(:name=>"Gnome",:str_mod=>-2,:con_mod=>2,:cha_mod=>2)
    Race.create(:name=>"Half-Elf",:any=> true)
    Race.create(:name=>"Half-Orc",:any=> true)
    Race.create(:name=>"Halfling",:str_mod=>-2,:dex_mod=>2,:wis_mod=>2)
    Race.create(:name=>"Human",:any=> true)
  end

  def self.down
		drop_table :races
  end
end
