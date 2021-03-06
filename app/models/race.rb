class Race < ActiveRecord::Base
	has_many :characters

	validates :name, :presence => true
	validates :str_mod, :numericality => { :only_integer => true }
	validates :dex_mod, :numericality => { :only_integer => true }
	validates :con_mod, :numericality => { :only_integer => true }
	validates :int_mod, :numericality => { :only_integer => true }
	validates :wis_mod, :numericality => { :only_integer => true }
	validates :cha_mod, :numericality => { :only_integer => true }
end

# == Schema Information
#
# Table name: races
#
#  id      :integer         not null, primary key
#  name    :string(255)
#  str_mod :integer         default(0)
#  dex_mod :integer         default(0)
#  con_mod :integer         default(0)
#  int_mod :integer         default(0)
#  wis_mod :integer         default(0)
#  cha_mod :integer         default(0)
#  any     :boolean         default(FALSE)
#

