require 'test_helper'

class RaceTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

