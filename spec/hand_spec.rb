require './player.rb'
require './dice.rb'
require './hand.rb'


describe PokerDice::Hand do
  let(:dice_array) { 5.times.map {PokerDice::Die.new} }
  let(:hand) {PokerDice::Hand.new(dice_array)}
  it "returns an array" do
    expect(hand.face_values).to be_instance_of(Array)
  end

  it "contains 5 things" do
    expect(hand.face_values.length).to eq 5
  end

  it "contains strings" do
    expect(hand.face_values.sample).to be_instance_of(String)
  end

  describe '#initialize' do
    it "accepts an array argument" do
      expect{PokerDice::Hand.new}.to raise_error(ArgumentError)
    end

    context "when given 5 Q-loaded dies" do
      it "has a face_value array containing 5 Qs" do
        dice = 5.times.map { PokerDice::LoadedDie.new('Q') }
        expect(PokerDice::Hand.new(dice).face_values).to eq %w[Q Q Q Q Q]
      end
    end

  end
end

  # describe "#rank" do
  #   context "when hand has 5 Queens" do
  #     #he writes it so a new hand is given an array of dice
  #     #for these kinds of tests he uses a LoadedDie, which will always
  #     # return the face_value it's initialized with
  #     expect(hand.rank).to eq
  #   end
