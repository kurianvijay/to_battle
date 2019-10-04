require_relative 'player'

class Game
  attr_reader :current_turn, :players, :player_1, :player_2, :opponent_of, :check_for_loser

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack(player)
    player.takes_damage
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  def opponent_of(the_player)
    @players.reject do |player|
      player == the_player
    end.first
  end

  def game_over?
    check_for_loser.any?
  end

  def check_for_loser
     @players.select do |player|
      player.hp <= 0
    end
  end
end
