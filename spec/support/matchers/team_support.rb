RSpec::Matchers.define :allow_team_to_enter  do |expected|
  match do |actual|
    begin
      Team.new("t").enter_competition(actual)
      true    
    rescue Competition::Closed
      false      
    end    

  end

  failure_message_for_should do |actual|
    "expected that #{actual} should allow team to enter"
  end

  failure_message_for_should_not do |actual|
    "expected that #{actual} should not allow team to enter"
  end

  description do
    "examine #{actual} allow team to enter?"
  end
end