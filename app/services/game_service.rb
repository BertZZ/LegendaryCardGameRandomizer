require_relative 'hero_service'
require_relative 'mastermind_service'
require_relative 'scheme_service'
require_relative '../game'

class GameService
  def self.create_game
    Game.new(::MastermindService.call, ::SchemeService.call, ::HeroService.call)
  end
end
