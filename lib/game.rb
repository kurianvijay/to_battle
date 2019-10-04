require_relative 'player'

class Game

attr_reader :current_turn, :players, :player_1, :player_2, :opponent_of

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
    @player_1 = player_1
    @player_2 = player_2
  end

  # def player_1
  #   @players.first
  # end
  #
  # def player_2
  #   @players.last
  # end

  def attack(player)
    player.takes_damage
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end


def opponent_of(the_player)
  @players.select do |player|
    player != the_player
  end.first
end

end
