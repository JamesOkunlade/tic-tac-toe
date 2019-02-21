require_relative './board.rb'
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


# PLAYER SELECTS POSITION ON THE BORD
  def player_move
    puts "ENTER YOUR SHOSEN LOCATION BETWEEN 1..9"
    @position = gets.chomp.to_i
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


  # DETERMINE WHO THE WINNER IS
  def game_results
    if @three_in_row
      puts "THE WINNER IS #{@player}!!"
    else
      puts "ITS A DRAWW LOOSERS!!!"
    end
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

  # RESTARTS GAME
  def restart_game
    initialize
    play_game
  end

  def end_game
    puts "THANKS VERY MUCH FOR PLAYING "
  end

end

puts "WELCOME TO TIC TAC TOE"
a = Game.new
a.play_game
