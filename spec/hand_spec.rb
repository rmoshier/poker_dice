require './player.rb'
require './dice.rb'
require './hand.rb'


describe PokerDice::Hand do
  let(:hand) {PokerDice::Hand.new}
  it "returns an array" do
    expect(hand.face_values).to be_instance_of(Array)
  end

  it "contains 5 things" do
    expect(hand.face_values.length).to eq 5
  end

  it "contains strings" do
    expect(hand.face_values.sample).to be_instance_of(String)
  end

  # describe "#rank" do
  #   context "when hand has 5 Queens" do
  #     #he writes it so a new hand is given an array of dice
  #     #for these kinds of tests he uses a LoadedDie, which will always
  #     # return the face_value it's initialized with
  #     expect(hand.rank).to eq
  #   end
end
