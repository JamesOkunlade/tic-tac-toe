require_relative './board.rb'
class Game < Board
  attr_accessor :position
  # STARTS GAME
 def play_game
   wel_come
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



# DETERMINES IF MOVE IS VALID
  def move_valid?
    if @board[@position - 1] == "X" || @board[@position - 1] == "O"
      @valid = false
    elsif @position.to_i.between?(1, 9)
      @valid = true
    else
      @valid = false
    end
  end

  # DETERMINES THE WINNER
  def determine_winer
    @player = if @player1_turn
                @player1


              else
                @player2

              end

  end




  # RESTARTS GAME
  def restart_game
    initialize
    play_game
  end




end


a = Game.new
a.play_game
