# #GameBoard begins
# class GameBoard
#   require 'matrix'
#   attr_reader :gameboard
#   def initialize
#     @board = Matrix[['1','2','3'],['4','5','6'],['7','8','9']]
#
#   end
#
#   def print_board
#     puts @board
#
#   end
#
# end
# #GameBoard ends
#
#
#
#
# #GameStart begins
# class GameStart
#
#   def initialize()
#     @gameboard = GameBoard.new()
#     @gameboard.print_board
#     @player1 = ""
#     @player2 = ""
#     @players = []
#     @switch = 0
#   end
#
#   def welcome
#     puts "Welcome to Tic Tac Toe"
#     puts "Name of first player: "
#     @player1 = gets.chomp
#     puts "Hello #{@player1} you're welcome on board. \n Now name of second player: "
#     @player2 = gets.chomp
#     @players.push(@player1)
#     @players.push(@player2)
#     puts "Awesome! #{@players[0]} and #{@players[1]} common let's play!"
#     puts "So this is an example of how the board looks. The different numbers correspond to different positions on the board."
#     puts $gameboard
#   end
#
#   def positions(num)
#     p = [nil, nil]
#     case num
#     when 1
#       p[0] = 0
#       p[1] = 0
#     when 2
#       p[0] = 0
#       p[1] = 1
#     when 3
#       p[0] = 0
#       p[1] = 2
#     when 4
#       p[0] = 1
#       p[1] = 0
#     when 5
#       p[0] = 1
#       p[1] = 1
#     when 6
#       p[0] = 1
#       p[1] = 2
#     when 7
#       p[0] = 2
#       p[1] = 0
#     when 8
#       p[0] = 2
#       p[1] = 1
#     when 9
#       p[0] = 2
#       p[1] = 2
#     end
#     p
#   end
#
#   def switch
#   end
#
# end
# #GameStart ends
#
# game = GameStart.new




class Board
    # protected
    attr_reader :board, :example
    def initialize
    @board = [  [' ',' ',' '],
                [' ',' ',' '],
                [' ',' ',' ']
                            ]
    @example = [[1,2,3],[4,5,6],[7,8,9]]
    @marks = 0
    # players = {}
    end

    # def marks
    #     @marks
    # end
    def draw  board
        for i in (0..2)
            board[i].each {|x| print "[#{x}]"}
            puts
        end
        # puts @example.inspect
    end


    def mark arr, player
        @board[arr[0]][arr[1]] = 'x' if player == 0
        @board[arr[0]][arr[1]] = 'o' if player == 1
        @marks += 1
    end

    def check_winner? arr
        siman = @board[arr[0]][arr[1]]

        #diagonal
        if arr[0] == arr[1]
            for i in (0..2)
                if @board[i][i] != siman
                    break
                end
                return true if i == 2
            end

        end

        #anti-diagonal
        if arr[0] + arr[1] == 2
            j = 2
            for i in (0..2)
                if @board[i][j] != siman
                    break
                end
                j -= 1
                return true if i == 2
            end

        end

        #column
        for i in (0..2)
            if @board[i][arr[1]] != siman
                break
            end
            if i==2
                return true
            end
        end

        #row
            for i in (0..2)
            if @board[arr[0]][i] != siman
                break
            end
            if i == 2
                return true
            end
        end

        if @marks == 9
            puts "It's a draw! Ha-ha, losers!"
            exit
        end


    end

    def coord number
        x = [nil,nil]
        case number
        when  1
            x[0] = 0
            x[1] =  0
        when  2
            x[0] = 0
            x[1] =  1
        when  3
            x[0] = 0
            x[1] =  2
        when  4
            x[0] = 1
            x[1] =  0
        when  5
            x[0] = 1
            x[1] =  1
        when  6
            x[0] = 1
            x[1] =  2
        when  7
            x[0] = 2
            x[1] =  0
        when  8
            x[0] = 2
            x[1] =  1
        when  9
            x[0] = 2
            x[1] =  2
    end
    x
end

    def reserved? coords
        if @board[coords[0]][coords[1]] != ' '
            return true
    end
    false

    end
end



class Game

def initialize
    @board = Board.new()
    @player1 = ''
    @player2 = ''
    @players = []
    @turn = 0
end

def play

    greetings
    loop do
    turnplayer

    end



end

private
def turnplayer
    # plr = 0
    # puts "#{@turn%2}"
    # puts "#{@players[0]}, it is your turn! Select a number from (1..9)"

    puts "#{@players[@turn%2]}, it is your turn! Select a number from (1..9)"
    x = legit_number
    puts "You picked up #{x}"
    @board.mark @board.coord(x), @turn%2
    @board.draw @board.board
    if @board.check_winner? @board.coord(x)
        puts "Congratulations! #{@players[@turn%2]} won! "
        puts "#{@players[(@turn+1)%2]}, you are loser!"
        exit
    end

# checking a winner
    @turn += 1

end

def legit_number
    x = nil
    loop do
        x = gets.chomp.to_i
         while x<1 or x>9
            puts "C'mon! Put a correct number!"
        x = gets.chomp.to_i
         end
         if @board.reserved?(@board.coord x)
            puts "What's wrong with you!? Try again!"
         else
            return x
         end
# x = gets.chomp.to_i
        end

x
end

def greetings
    puts 'What is the name of the 1st player:'
    @player1 = gets.chomp
    puts 'What is the name of the 2nd player:'
    @player2 = gets.chomp
    @players.push @player1
    @players.push @player2
    puts "Hello, #{@players[0]} and #{@players[1]}. Let's play!"
    puts "This is an example of Board. You should choose a number where you want to put a mark"
    @board.draw @board.example
end

end

game = Game.new()
game.play
