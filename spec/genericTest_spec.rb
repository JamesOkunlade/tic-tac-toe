require './lib/game'
# require './lib/board'
# require './displayController'

RSpec.describe Game do



  describe 'move_valid?' do
    it "Determin if move valid?" do
      game = Game.new
      expect(game.move_valid?).to eq @valid = false
    end

    it "Determin if fkdjfdj" do
      game = Game.new
      expect(game.move_valid?).to eq @valid = true
    end

    it "Dfhdd" do
      game = Game.new
      expect(game.move_valid?).to eq @valid = false
    end
  end


end
