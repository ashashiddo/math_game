# math_game.rb
class MathGame
    def initialize(player1, player2)
      @player1 = player1
      @player2 = player2
      @current_player = player1
    end
  
    def start_game
      puts "----- GAME START -----"
      while game_over?
        question = Question.new
        puts "#{current_player.name}: #{question.to_s}"
        print "> "
        answer = gets.chomp.to_i
  
        if question.correct_answer?(answer)
          current_player.increase_score
          puts "#{current_player.name}: YES! You are correct."
        else
          current_player.decrease_lives
          puts "#{current_player.name}: NO! You are wrong."
        end
  
        switch_turn
        display_scores
        puts "----- NEW TURN -----"
      end
  
      announce_winner
    end
  
    # Additional 
  end
  