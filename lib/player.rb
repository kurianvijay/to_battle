# frozen_string_literal: true

class Player
<<<<<<< HEAD
  DEFAULT_HP = 60

  attr_reader :name, :hp

=======

DEFAULT_HP = 60
  attr_reader :name
>>>>>>> 85bf1e8b477bdd558e98ae55fd511071440b6f75
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
