# frozen_string_literal: true

class Player
  DEFAULT_HP = 60

  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def takes_damage
    @hp -= 10
  end

  def attack(player)
    player.takes_damage
  end
end
