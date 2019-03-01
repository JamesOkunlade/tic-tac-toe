require './lib/game'
# require './lib/board'
# require './displayController'

RSpec.describe Game do



  describe 'move_valid?' do

    it "Determin if move valid?" do
      game = Game.new
      game.position = 1
      expect(game.move_valid?).to eq @valid = true
      game.board[0] = 'X'
      expect(game.move_valid?).to eq @valid = false
    end

  end

  describe 'determine_winer' do

    it "Determin who is the winner" do
      game = Game.new
      game.player1_turn = true
      expect(game.determine_winer).to eq @player = @player1
      game.player1_turn = false
      expect(game.determine_winer).to eq @player = @player2
    end

  end

  describe 'determine_turn' do

    it "Determin who's turn now" do
      game = Game.new
      game.player1_turn = true
      expect(game.determine_turn).to eq @player = "X"
      game.player1_turn = false
      expect(game.determine_turn).to eq @player = "O"
    end

  end


end
