require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("josiane")
player2 = Player.new("josé")

puts "Voici l'état de chaque joueur :"
player1.show_state
player2.show_state

puts "passons à la phase d'attack"

while player1.life_points > 0 && player2.life_points > 0
  player1.attacks(player2)
  break if player2.life_points < 0
end

player2.attacks(player1)

#binding.pry
#puts "end of file"