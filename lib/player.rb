# require_relative 'game'

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
end
