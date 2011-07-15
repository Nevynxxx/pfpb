require File.dirname(__FILE__) + '/../spec_helper'

describe Character do
	before(:each) do
		@char = Character.new
	end

	it "should be invalid with no name" do
		@char.should be_invalid
	end

	it "should be invalid with no race" do
		@char.name = "Bob"
		@char.should be_invalid
	end

	it "should be valid with a name and race" do
		@char.name = "Bob"
		@char.race = Race.create!(:name => "Test")
    @char.should be_valid
  end

end
