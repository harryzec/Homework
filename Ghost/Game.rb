require_relative "Player"
require "byebug"
require "set"

class Game
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @fragment = ""
        words = File.readlines("dictionary.txt").map(&:chomp)
        @dictionary = Set.new(words)
        @current_player = player1
        @previous_player = player2
    end


    def next_player!
        if @current_player == @player1 
            @current_player = @player2
            @previous_player = @player1
        else
            @current_player = @player1
            @previous_player = @player2
        end
    end

    def valid_play?(string)
        alpha = ("a".."z").to_a
        alpha.include?(string.downcase)

    end

    def take_turn(player)
        valid = false
        while !valid
            debugger
            valid = true
            p @current_player.name + ", enter a letter"
            answer = gets.chomp 
            if !valid_play?(answer)
                puts "INVALID LETTER"
                valid = false 
            else
                @fragment += answer
                
            end
        end

        @dictionary.include?(@fragment)
    end

    def losses
        
    end

    def play_round
        passing = false
        while !passing
            passing = true
            
            if !take_turn(@current_player)
                passing = true 
            end

            next_player!
        end

        p @current_player.name.to_s + " has won!"
    end

    if $PROGRAM_NAME == __FILE__
        game = Game.new(
            Player.new("Harry"),
            Player.new("Rob")
        )

        game.play_round
    end

end



