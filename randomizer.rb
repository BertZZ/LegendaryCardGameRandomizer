class Randomizer

  def initialize
    @masterminds = ["Skull","Magneto","Loki","Doom"]
    @schemes = ["Portals to the Dark Dimension","Civil War","Cosmic Cube","Virus","Bank Robbery","Skrull Shapeshifters","Killbots","Prision Breakout"]
    @mastermind = ' '
    @scheme = ' '
    @chosen = []
  end

  def randomize_heroes
    heroes = ["Hulk", "Hawkeye", "Thor", "Emma Frost", "Storm","Rogue","Wolverene","Cyclops","Nick Fury","CaptainMerca","Black Widow","Deadpool","Gambit","Iron Man","Spidey"]
    puts heroes.sample(5)
  end

  def randomize_maserminds
    @mastermind = @masterminds.sample
    puts @mastermind
  end

  def randomize_schemes
    @scheme = @schemes.sample
    puts @scheme
  end

  def randomize_henchmen(players)
    henchmen = ["Doombot Legion","Hand Ninja's","Savage Land Mutates","Sentinals"]
    chosen_henchmen = []
    if @mastermind == "Doom"
      henchmen.delete("Doombot Legion")
      chosen_henchmen << "Doombot Legion"
    end

    if players < 4 && chosen_henchmen.length == 0
      hench = henchmen.sample
      chosen_henchmen << hench
    elsif players >= 4 && chosen_henchmen.length == 1
      hench = henchmen.sample
      chosen_henchmen << hench
    elsif  players >= 4 && chosen_henchmen.length == 0
      hench = henchmen.sample(2)
      chosen_henchmen << hench
    end
    puts chosen_henchmen
  end

  def randomize_villan_groups(players)
    villan_groups = ["Brotherhood","Hydra","Enemies of Asgard", "Masters of Evil", "Radiation","Skruls","Spider-Foes"]
    chosen_villans = []
    mastermind = @mastermind
    case mastermind
    when "Magneto"
      villan_groups.delete("Brotherhood")
      chosen_villans << "Brotherhood"
    when "Loki"
      villan_groups.delete("Enemies of Asgard")
      chosen_villans << "Enemies of Asgard"
    when "Skull"
      villan_groups.delete("Hydra")
      chosen_villans << "Hydra"
    end

    if chosen_villans.length == 0
      if players == 2
        vils = villan_groups.sample(2)
        chosen_villans << vils
      elsif players == 3 || players == 4
        vils = villan_groups.sample(3)
        chosen_villans << vils
      elsif players == 5
        vils = villan_groups.sample(4)
        chosen_villans << vils
      end

      elsif chosen_villans.length == 1
        if players == 2
          vils = villan_groups.sample(1)
          chosen_villans << vils
        elsif players == 3 || players == 4
          vils = villan_groups.sample(2)
          chosen_villans << vils
        elsif players == 5
          vils = villan_groups.sample(3)
          chosen_villans << vils
        end
      end
      puts chosen_villans
    end



    def setup(players)
      randomize_heroes
      randomize_maserminds
      randomize_schemes
      randomize_henchmen(players)
      randomize_villan_groups(players)
    end
  end

randomizer = Randomizer.new
randomizer.setup(4)
