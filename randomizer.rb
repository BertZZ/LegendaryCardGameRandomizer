class Randomizer

  def initialize
  @selected = []
  end

  def randomize_heroes
    heroes = ["Hulk", "Hawkeye", "Thor", "Emma Frost", "Storm","Rogue","Wolverene","Cyclops","Nick Fury","CaptainMerca","Black Widow","Deadpool","Gambit","Iron Man","Spidey"]
    puts heroes.sample(5)
  end

  def randomize_maserminds
    masterminds = ["Skull","Magneto","Loki","Doom"]
    puts masterminds.sample
  end

  def randomize_schemes
    schemes = ["Portals to the Dark Dimension","Civil War","Cosmic Cube","Virus","Bank Robbery","Skrull Shapeshifters","Killbots","Prision Breakout"]
    puts schemes.sample
  end

  def setup
    randomize_heroes
    randomize_maserminds
    randomize_schemes
  end
end

randomizer = Randomizer.new
randomizer.setup
