class Board
  def initialize()

   @board = (1..9).to_a
   @player1_turn = true
   @turn_count = 0
   @three_in_row = false
   @valid = true

 end
 # CLEARS INTERFACE TO MAINTAIN BOARD POSITION
   def clear_interface
     system 'clear'
     system 'clc'
   end

   # SHOWS BOARD
   def show_board
     clear_interface
     puts "#{@player1} is X and #{@player2} is O"
     puts "CHOOSE YOUR POSSITION FROM THE NUMBERS BELOW"
     puts ''
     puts "\t|#{@board[0]}|\t|#{@board[1]}|\t|#{@board[2]}|"
     puts ''
     puts "\t|#{@board[3]}|\t|#{@board[4]}|\t|#{@board[5]}|"
     puts ''
     puts "\t|#{@board[6]}|\t|#{@board[7]}|\t|#{@board[8]}|"
     puts ''

     puts "INVALID ENTRY, ENTER A NEW VALID POSITION" if @valid == false
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
