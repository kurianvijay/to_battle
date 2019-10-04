require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }

  let(:player_1) { double :player, hp: 60 }
  let(:player_2) { double :player, hp: 60 }
  let(:dead_player) { double :player, hp: 0 }

  subject(:gamer) { described_class.new(dead_player, player_2) }

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

  describe '#game_over?' do
    it 'tells us is a game is over' do
      expect(game.game_over?).to eq false
    end
  end

  describe '#check_for_loser' do
    it 'add in dead_players to losers' do
      expect(gamer.check_for_loser).not_to be_empty
    end
  end
end
