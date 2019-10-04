require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }

  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#player_1 and #player_2' do
    it 'gets a player_1' do
      expect(game.player_1).to eq player_1
    end
    it 'gets a player_2' do
      expect(game.player_2).to eq player_2
    end
  end

  describe 'allows us to play a game' do
    describe '#attack' do
      it 'allows player1 to attack player2' do
        expect(player_2).to receive(:takes_damage)
        game.attack(player_2)
      end
    end
  end

  describe '#current_turn & #switch_turns' do
    it 'starts as player_1' do
      expect(game.current_turn).to eq player_1
    end
    it 'switch turns to make current turn equal to player 2' do
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end
  end

  describe '#opponent_of' do
    it 'selects an opponent to attack' do
      expect(game.opponent_of(player_1)).to eq player_2
    end
  end
  
end
