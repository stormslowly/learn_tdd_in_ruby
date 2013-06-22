require_relative '../lib/add.rb'


describe "the add function" do

	it "should add two numbers " do
		add_func(5,1).should == 6
	end
	
end