require 'sinatra'
require 'json'
require_relative 'services/game_service'
require_relative 'serializers/game_serializer'

before do
  content_type 'application/json'
end

get '/' do
  GameSerializer.new(GameService.create_game).do_the_thing
end
