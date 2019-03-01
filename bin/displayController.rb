class Controller
  # CLEARS INTERFACE TO MAINTAIN BOARD POSITION
  def clear_interface
    system 'clear'
    system 'clc'
  end

  def wel_come
    puts "WELCOME TO TIC TAC TOE"
  end

  def end_game
    puts "THANKS VERY MUCH FOR PLAYING "
  end

  def get_player_intro
   puts "Enter First Players Name"
   @player1 = gets.chomp.to_s.capitalize

   puts "Enter Second Players Name"
   @player2 = gets.chomp.to_s.capitalize
 end


  # DETERMINE WHO THE WINNER IS
  def game_results
    if @three_in_row
      puts "THE WINNER IS #{@player}!!"
    else
      puts "ITS A DRAWW LOOSERS!!!"
    end
  end

  # PLAYER SELECTS POSITION ON THE BORD
  def player_move
    puts "ENTER YOUR SHOSEN LOCATION BETWEEN 1..9"
    @position = gets.chomp.to_i
  end


  # PROMPTS TO RESTART GAME
  def play_again?
    puts "WOULD YOU LIKE TO PLAY AGAIN?"
    puts 'Y/N?'
    response = gets.chomp
    if response.upcase == 'Y'
      @restart = true
    else
      @restart = false
    end
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
