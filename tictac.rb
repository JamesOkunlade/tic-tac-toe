#GameBoard begins
class GameBoard
  attr_reader :gameboard
  def initialize
    @gameboard = [
      ['1', '2', '3'],
      ['4', '5', '6'],
      ['7', '8', '9']
    ]

  end

  def print_board(board)
    for i in 0..2
      row[i].each {
        |x|
        print "[#{x}]"
      }
    end
  end
  # p = [1, 2]

  # puts @gameboard[p[0]][p[1]]

end
#GameBoard ends




#GameStart begins
class GameStart

  def initialize()
    @gameboard = GameBoard.new()
    @player1 = ""
    @player2 = ""
    @players = []
    @switch = 0
  end

  def welcome
    puts "Welcome to Tic Tac Toe"
    puts "Name of first player: "
    @player1 = gets.chomp
    puts "Hello #{@player1} you're welcome on board. \n Now name of second player: "
    @player2 = gets.chomp
    @players.push(@player1)
    @players.push(@player2)
    puts "Awesome! #{@players[0]} and #{@players[1]} common let's play!"
    puts "So this is an example of how the board looks. The different numbers correspond to different positions on the board."
    puts $gameboard
  end

  def positions(num)
    p = [nil, nil]
    case num
    when 1
      p[0] = 0
      p[1] = 0
    when 2
      p[0] = 0
      p[1] = 1
    when 3
      p[0] = 0
      p[1] = 2
    when 4
      p[0] = 1
      p[1] = 0
    when 5
      p[0] = 1
      p[1] = 1
    when 6
      p[0] = 1
      p[1] = 2
    when 7
      p[0] = 2
      p[1] = 0
    when 8
      p[0] = 2
      p[1] = 1
    when 9
      p[0] = 2
      p[1] = 2
    end
    p
  end

  def switch
  end

end
#GameStart ends

game = GameStart.new
