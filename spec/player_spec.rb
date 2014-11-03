# start by making a test for our hand. hand will have 5 dice objects in it.
# first lets test
  # hand is class that returns a hash
# dice array has die objects in it
# hand array has the symbols in it - set hand - set after roll some of
# the dice


require './player.rb'

describe PokerDice::Player do
  # has an attribute hand
  # player instance responds to hand attribute
  let(:player) {PokerDice::Player.new}

  describe "#hand" do
    it "returns a hash" do
      expect(player.hand).to be_instance_of(Array)
    end

    it "contains 5 things" do
      expect(player.hand.length).to eq 5
    end

    it "contains strings" do
      expect(player.hand.sample).to be_instance_of(String) 
    end

  end


end
