require 'pry'
class Player
  attr_accessor :name,  :life_points


def initialize(name)
  @name = name
  @life_points = 10

end

def show_state
 puts "#{@name} a #{@life_points} points de vie "
end
  
def gets_damage(damage)
  @life_points -= damage
  if @life_points <= 0
     puts "le joueur #{@name} a été tué"
  end


end

def attacks(player)
  puts "Le joueur #{@name} attaque le joueur #{player.name}"
damage = compute_damage
player.gets_damage(damage)
puts " il lui inflige #{damage} de dommage "

end

def compute_damage
  rand(1..6)
end

end



#binding.pry
#puts "end of file"