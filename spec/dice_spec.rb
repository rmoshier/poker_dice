# start by making a test for our hand. hand will have 5 dice objects in it.
# first lets test so that all of the values in a hand add to 5
  # hand is class that returns a hash

require './dice.rb'

describe PokerDice::Player do
  # has an attribute hand
  # player instance responds to hand attribute
  let(:player) {PokerDice::Player.new}
  describe "#hand" do
    it "returns a hash" do
      expect(player.hand).to be_instance_of(Hash)
    end
  end
end
