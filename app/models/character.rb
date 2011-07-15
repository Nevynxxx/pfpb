class Character < ActiveRecord::Base
	belongs_to :race

	def aStr
		self.strength + self.race.str_mod
	end
	
	def aDex
		self.dexterity + self.race.dex_mod
	end
	
	def aCon
		self.constitution + self.race.con_mod
	end
	
	def aInt
		self.intelegence + self.race.int_mod
	end
	
	def aWis
		self.wisdom + self.race.wis_mod
	end
	
	def aCha
		self.charisma + self.race.cha_mod
	end
	
	# Return the points spent on a stat
  def points(stat)
    s = case eval(stat)
      when 7 then -4
      when 8 then -2
      when 9 then -1
      when 10 then 0
      when 11 then 1
      when 12 then 2
      when 13 then 3
      when 14 then 5
      when 15 then 7
      when 16 then 10
      when 17 then 13
      when 18 then 17
    end
  end

  # Return the characters point buy points score
  def total_points
    t = points("strength") + points("dexterity") + points("constitution") + points("intelegence") + points("wisdom") + points("charisma")
  end
end

# == Schema Information
#
# Table name: characters
#
#  id           :integer         not null, primary key
#  name         :string(255)
#  strength     :integer
#  dexterity    :integer
#  constitution :integer
#  intelegence  :integer
#  wisdom       :integer
#  charisma     :integer
#  created_at   :datetime
#  updated_at   :datetime
#  race_id      :integer
#

