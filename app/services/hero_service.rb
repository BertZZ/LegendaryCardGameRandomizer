class HeroService
  def self.call
    ["hulk", "hawkeye", "thor", "emma_frost", "storm", "rogue", "wolverene", "cyclops",
     "nick_fury", "captain_america", "black_widow", "deadpool", "gambit", "iron_man", "spiderman"]
     .sample(5)
  end
end
