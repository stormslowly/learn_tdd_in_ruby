require_relative "../lib/Competition.rb"
require_relative "support/matchers/team_support.rb"

describe Competition do

  let(:competition){ Competition.new }
  let(:team) { Team.new("Ateam") }

  context "having no questions" do
    before { competition.questions =[] }
  
    it "doesn't accept any team" do 
      
      expect do
        team.enter_competition(competition)
      end.to raise_error Competition::Closed
    end
  end

  context "questions has questions" do 
    before { competition.questions = ["question1"]}
    subject {competition}

    it {should allow_team_to_enter}

  end 



end