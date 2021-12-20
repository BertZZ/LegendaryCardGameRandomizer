class Game
  attr_reader :mastermind, :scheme, :heroes
  def initialize(mastermind, scheme, heroes)
    @mastermind = mastermind
    @scheme = scheme
    @heroes = heroes
  end
end
