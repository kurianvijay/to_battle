# frozen_string_literal: true

require 'player'

describe Player do
<<<<<<< HEAD
  subject(:player1) { described_class.new('Vijay') }
  subject(:player2) { described_class.new('Josh') }

  describe 'creates a player' do
    it 'return name and hp' do
      expect(player1.name).to eq 'Vijay'
    end
  end

  describe '#takes_damage' do
    it 'allows player1 to attack player2' do
      turn1 = player1.attack(player2)
      expect { player2.takes_damage }.to change { player2.hp }.by(-10)
=======

  subject(:player1) { described_class.new("Vijay") }

  describe "creates a player" do
    it "return name and hp" do
      expect(player1.name).to eq "Vijay"
>>>>>>> 85bf1e8b477bdd558e98ae55fd511071440b6f75
    end
  end
end
