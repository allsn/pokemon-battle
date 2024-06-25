require_relative "pokemon"


class Menu
  
  def initialize
    @pokemons = []
  end

  def run
    puts "\n"    
    puts "Welcome to the world of POKEMON!"
    
    loop do
      puts "\n"    
      puts "What would you like to do next?"
      puts "\n"  
      puts "1. Add a Pokemon"
      puts "2. View all Pokemon"
      puts "3. Start a battle"
      puts "4. Say bye for now"
      puts "\n"
      puts "Choose an option: "

    choice = gets.chomp.to_i

    case choice
    when 1
      add
    when 2
      view
    when 3
      battle
    when 4
      puts "\n"  
      puts "Thanks for playing! Come back to catch 'em all!"
      puts "\n"
      break
    else
      puts "\n"  
      puts "Please choose an option between 1 and 4."
    end
  end
end


private

def add
  puts "\n"  
  print "Enter Pokemon name: "
  name = gets.chomp
  print "Enter type: "
  type = gets.chomp
  print "Enter attack: "
  attack = gets.chomp
  new_poke = Pokemon.new(name, type, attack)
  @pokemons << new_poke
  puts "\n"
  puts "Welcome, #{name.upcase}!"
end

def view
  puts "\n"  
  puts "Pokemon in your collection: "
    if @pokemons.empty?
      puts "None. Go back to add some!"
    else
      @pokemons.each_with_index do |pokemon, index|
      puts "#{index + 1}. #{pokemon.name.upcase} ~ #{pokemon.type.capitalize} type Pokemon with #{pokemon.attack.capitalize} attack."
    end
  end
end


def battle

puts "\n"  
puts "Choose your Pokemon by typing its assigned number:"
view
puts "\n"  
poke_select = gets.chomp.to_i
puts "\n"

competitor = @pokemons[poke_select - 1]
opponent = @pokemons.sample

puts "You've selected #{competitor.name.upcase}"
puts "#{competitor.name.upcase} will battle #{opponent.name.upcase}. Let's begin!"


#player1_move == ["#{name} used #{attack} and wounded #{opponent.name}!", "#{name} used #{attack} and wounded #{opponent.name}!", "#{name} used #{attack} and wounded #{opponent.name}!", "#{name} used #{attack} and #{opponent.name} fainted! You WIN!", "#{opponent.name} ran away. The battle is over!"]
#player2_move == ["#{opponent.name} used #{opponent.attack} and wounded #{name}!", "#{opponent.name} used #{opponent.attack} and wounded #{name}!", "#{opponent.name} used #{opponent.attack} and wounded #{name}!", "#{opponent.name} used #{opponent.attack} and #{name} fainted! You LOSE!"]


end

end
