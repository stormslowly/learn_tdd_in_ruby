
class Team
  attr_accessor :name,:members
  def initialize(name,members=[])
    raise Exception("Wrong members type") unless members.is_a? Array
    @name = name

    raise Exception("dirty words in name") if has_bad_name?

    @members = members
  end


  def enter_competition(competition)
    raise Competition::Closed
  end
  
  def famous?
    members.include? "jackie"
  end
  
  def has_bad_name?
    list_of_bad_words = %w{ pussy fuck loser}
    list_of_bad_words - @name.downcase.split !=list_of_bad_words
  end

end