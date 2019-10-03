require 'player'

describe Player do
  let(:player1) {described_class.new("Vijay")}
  describe "creates a player" do
    it "return name and hp" do
      expect(player1.name).to eq "Vijay"
    end
  end
end
