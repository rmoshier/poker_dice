module PokerDice

  class Hand
    attr_reader :face_values

    def initialize
      @face_values = ['Q', 'K', 'T', '9', 'Q']
    end

    def rank
      counts = Hash.new(0)
      face_values.each do |face|
        counts[face] += 1
      end
    end
    
  end
end
