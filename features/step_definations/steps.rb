require 'cucumber/rspec/doubles'
require_relative '../../lib/Competition.rb'
require_relative '../../lib/Team.rb'

Given /there is a team called / do 
  @team = Team.new "name"
end

Given /I have a Competition with( no)? questions/ do|no_questions|
  @competition = Competition.new
  if no_questions
    @competition.stub questions:[]
  else
    @competition.stub questions:[ stub ]
  end
end



When /a team enters the Competition/ do
  @method = -> {@team.enter_competition @competition}
end



Then  /I should( not)? see a error/ do |dont_raise_error| 
  if dont_raise_error 
    @method.should_not raise_error 
  else
    @method.should raise_error Competition::Closed
  end
end


