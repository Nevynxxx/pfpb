require File.dirname(__FILE__) + '/../spec_helper'

describe Race do
	before(:each) do
		@race = Race.new
	end

  it "should be invalid without a name" do
    @race.should_not be_valid
    @race.errors[:name].should == ["can't be blank"]
	end

	it "should be invalid with non-integer str_mod" do
    @race.name = 'someracename'
		@race.str_mod = "hello"
    @race.should_not be_valid
    @race.errors[:str_mod].should == ["is not a number"]
	end

	it "should be invalid with non-integer dex_mod" do
    @race.name = 'someracename'
		@race.dex_mod = "hello"
    @race.should_not be_valid
    @race.errors[:dex_mod].should == ["is not a number"]
	end

	it "should be invalid with non-integer con_mod" do
    @race.name = 'someracename'
		@race.con_mod = "hello"
    @race.should_not be_valid
    @race.errors[:con_mod].should == ["is not a number"]
	end

	it "should be invalid with non-integer int_mod" do
    @race.name = 'someracename'
		@race.int_mod = "hello"
    @race.should_not be_valid
    @race.errors[:int_mod].should == ["is not a number"]
	end

	it "should be invalid with non-integer wis_mod" do
    @race.name = 'someracename'
		@race.wis_mod = "hello"
    @race.should_not be_valid
    @race.errors[:wis_mod].should == ["is not a number"]
	end

	it "should be invalid with non-integer cha_mod" do
    @race.name = 'someracename'
		@race.cha_mod = "hello"
    @race.should_not be_valid
    @race.errors[:cha_mod].should == ["is not a number"]
	end

	it "should be valid with valid details" do
    @race.name = 'someracename'
    @race.should be_valid
  end

end
