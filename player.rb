module PokerDice

  class Player
    attr_reader :hand, :dice

    def initialize
      @hand = ['Q', 'K', 'T', '9', 'Q']
      @dice = 5.times.map { PokerDice::Die.new } 
    end

  end

end
