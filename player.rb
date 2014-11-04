module PokerDice

  class Player
    attr_reader :hand, :dice

    def initialize
      @hand = PokerDice::Hand.new('thing')
      @dice = 5.times.map { PokerDice::Die.new }
    end

  end

end
