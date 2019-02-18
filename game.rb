require './board.rb'
class Game < Board
  # STARTS GAME
 def play_game

   get_player_intro
   show_board
   while @turn_count < 9 && !@three_in_row
     determine_turn
     player_move
     move_valid?
     if @valid
       # PLACES PIECE ON BOARD IN SELCETED POSITION
       @board[@position - 1] = @player
       # USED TO DETERMINE IF BOARD IS FULL
       @turn_count +=  1
       win?
       determine_winer
       # AFTER EACH VALID MOVE IT BECOMES THE NEXT PLAYER'S MOVE
       @player1_turn = !@player1_turn
     end
     show_board
   end
   game_results
   play_again?
   @restart ? restart_game : end_game
 end

 def get_player_intro
   puts "Enter First Players Name"
   @player1 = gets.chomp.to_s.capitalize

   puts "Enter Second Players Name"
   @player2 = gets.chomp.to_s.capitalize
 end

 # DETERMINES WHO'S TURN IT IS
 def determine_turn
   @player = if @player1_turn
               puts "It is #{@player1}'s turn"
               "X"

             else
               puts "It is #{@player2}'s turn"
               "O"

             end

 end



 

end
