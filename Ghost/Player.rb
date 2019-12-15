require_relative "Game"

class Player
    attr_reader :name
    
    def initialize(name)
        @name = name
    end

    def guess(game)
        game.take_turn(game.current_player)
    end

    def alert_invalid_guess(str)
        p str + " is not a valid move, select a different letter."
    end
end