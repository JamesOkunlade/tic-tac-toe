class Controller
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


end
