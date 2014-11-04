module PokerDice

  class Player
    attr_reader :hand, :dice

    def initialize
      @dice = 5.times.map { PokerDice::Die.new }
      @hand = PokerDice::Hand.new(@dice)
    end

  end

end
