class GameSerializer
  def initialize(game)
    @game = game
  end

  def do_the_thing
    data = {
      mastermind: @game.mastermind,
      scheme: @game.scheme,
      heroes: @game.heroes
    }
    data.to_json
  end
end
