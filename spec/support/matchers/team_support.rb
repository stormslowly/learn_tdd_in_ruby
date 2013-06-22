RSpec::Matchers.define :be_a_multiple_of  do |expected|
  match do |actual|
    actual % expected == 0
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