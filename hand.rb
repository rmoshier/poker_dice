module PokerDice

  class Hand
    attr_reader :face_values

    def initialize(dice_array)
      @face_values = dice_array.map { |die| die.top_face }
    end

    def rank
      counts = Hash.new(0)
      face_values.each do |face|
        counts[face] += 1
      end
    end

  end
end
