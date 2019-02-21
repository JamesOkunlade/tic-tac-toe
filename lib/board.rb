require '../bin/displayController.rb'

class Board < Controller
  def initialize()

   @board = (1..9).to_a
   @player1_turn = true
   @turn_count = 0
   @three_in_row = false
   @valid = true

 end




   # DETERMINE IF WIN CONDITION MET: True > End Game
   def win?
     if @board[0] == @player && @board[1] == @player && @board[2] == @player
       @three_in_row = true
     elsif @board[3] == @player && @board[4] == @player && @board[5] == @player
       @three_in_row = true
     elsif @board[6] == @player && @board[7] == @player && @board[8] == @player
       @three_in_row = true
     elsif @board[0] == @player && @board[3] == @player && @board[6] == @player
       @three_in_row = true
     elsif @board[1] == @player && @board[4] == @player && @board[7] == @player
       @three_in_row = true
     elsif @board[2] == @player && @board[5] == @player && @board[8] == @player
       @three_in_row = true
     elsif @board[0] == @player && @board[4] == @player && @board[8] == @player
       @three_in_row = true
     elsif @board[2] == @player && @board[4] == @player && @board[6] == @player
       @three_in_row = true
     end
   end


end
