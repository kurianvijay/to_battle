# frozen_string_literal: true

require 'player'

describe Player do
  subject(:player1) { described_class.new('Vijay') }
  subject(:player2) { described_class.new('Josh') }

  describe 'creates a player' do
    it 'return name and hp' do
      expect(player1.name).to eq 'Vijay'
    end
  end
  
  describe '#takes_damage' do
    it 'allows player1 to attack player2' do
      expect { player2.takes_damage }.to change { player2.hp }.by(-10)
    end
  end
end
