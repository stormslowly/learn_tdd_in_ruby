require 'cucumber/rspec/doubles'
require_relative '../../lib/Competition.rb'
require_relative '../../lib/Team.rb'

Given /there is a team called / do 
  @team = Team.new "name"
end

Given /I have a Competition without questions/ do
  @competition = Competition.new
  @competition.stub questions:[]
end

When /a team enters the Competition/ do
  @method = -> {@team.enter_competition @competition}
end

Then /I should see a error/ do
  @method.should raise_error Competition::Closed
end
