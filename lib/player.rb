class Player

DEFAULT_HP = 60
  attr_reader :name
  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def name
    @name
  end
end
