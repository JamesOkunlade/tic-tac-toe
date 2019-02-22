require './lib/game'
# require './lib/board'
# require './displayController'

RSpec.describe Game do

  describe '#win?' do
    it "Determin if win condition met?" do
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
  end

  describe '#game_results' do
    it "Show the winner or Draw" do
      def game_results
        if @three_in_row
          puts "THE WINNER IS #{@player}!!"
        else
          puts "ITS A DRAWW LOOSERS!!!"
        end
      end

    end
  end

  describe '#move_valid?' do
    it "Determin if move valid?" do
      def move_valid?
        if @board[@position - 1] == "X" || @board[@position - 1] == "O"
          @valid = false
        elsif @position.to_i.between?(1, 9)
          @valid = true
        else
          @valid = false
        end
      end

    end
  end

  describe '#determine_winer' do
    it "Determin winner?" do
      def determine_winer
        @player = if @player1_turn
                    @player1


                  else
                    @player2

                  end

      end
    end
  end

end
