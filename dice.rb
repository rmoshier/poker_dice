module PokerDice
  
 class Die
    FACES = %w[ 9 T J Q K A ]
    # same as typing ['9', 'T', 'J', 'Q', 'K', 'A']

    attr_reader :top_face

    def initialize
      roll
    end

    def roll
      @top_face = FACES[ rand(0..5) ]
    end
  end

end

# d = Die.new
# puts d.roll.inspect

# step one: get a hand
  # roll 5 dice (we have the template to roll 1)
  # each die, save or reroll
  # roll x dice (remaining dice)
  # rach x, save or reroll
  # roll y dice
# step 2: evaluate hand
  # checks if it is 5 of a kind (are they all the same thing?)
  # elsif check 4 of a kind
  # elsif check 4 of a kind
  # elsif check if there are 3 matching, and remaining 2 match each other
  # elsif check straight
    # find the highest, check if one below is present, repeat
