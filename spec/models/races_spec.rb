require File.dirname(__FILE__) + '/../spec_helper'

describe Race do
  it "should be invalid without a name" do
    @race = Race.new
    @race.should_not be_valid
    @race.errors.on(:name).should equal "is required"
	end

	it "should be valid with a name" do
    @race.name = 'someracename'
    @race.should be_valid
  end

end
