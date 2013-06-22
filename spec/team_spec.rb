
require_relative "../lib/team.rb"

describe 'team ' do 

  it 'should have a name' do 
  	Team.new("a team").should respond_to :name   

  end

  it 'should have list of players' do
  	Team.new("a team").members.should be_kind_of Array
  end


  it 'should be a famous team if have celebratiy' do 
  	Team.new("fav team",["jackie","lucy"]).should be_famous

  end

  it "should raise error when have bad words in name" do 
  	expect{ Team.new("pussy team")}.to raise_error
  end

  context "give a list of bad menbers" do 
    let(:bad_names){ {}}
    it "should raise error " do
      expect{ Team.new("bad team",bad_names)}.to raise_error   
    end
  end
 	


end