
class Competition
	attr_accessor :questions
	def initialize
		
	end

  def start
    close
  end
	
	class Closed < StandardError
	end

	
end