#!/usr/bin/ruby

class Guessing_game
  def initialize
    @random_number = rand 10
  end
  
  def play
    puts "Guess a number!"
    guess = gets
    if guess.to_i != @random_number
      play
      else puts "Correct!"
    end
  end
end

game = Guessing_game.new
game.play
