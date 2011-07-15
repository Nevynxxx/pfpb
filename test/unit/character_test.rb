require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
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

