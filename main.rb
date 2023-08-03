require './player'
require './math_game'
require './question'

# two players
player1 = Player.new('Player 1')
player2 = Player.new('Player 2')

#The math game and start it
math_game = MathGame.new(player1, player2)
math_game.start_game