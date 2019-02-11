# class TicTacToe
#   def switch
#   end
#
#
#   def play(location)
#   end
# end


class GameBoard
  row1 = [0, 0, 0]
  row2 = [0, 0, 0]
  row3 = [0, 0, 0]
  $gameboard = "#{row1}\n#{row2}\n#{row3}"
end

class Player
  @@count = 0
  def initialize(name)
    @name = name
    @@count += 1
  end

  def welcome
    if @@count == 1
      puts "Hi #{@name} welcome on board. You're the first player"
    else
      puts "Hello #{@name} good to have you on board too. You'll be the second player"
    end
  end

  def play(location)
    location = "X"
  end
end


player1 = Player.new("James")
player1.welcome
player2 = Player.new("Adnan")
player2.welcome
puts "\n#{$gameboard}"
