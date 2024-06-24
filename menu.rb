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
      puts "1. View all Pokemon"
      puts "2. Add a Pokemon"
      puts "3. Start a battle"
      puts "4. Say bye for now"
      puts "\n"
      puts "Choose an option: "

    choice = gets.chomp.to_i

    case choice
    when 1
      view
    when 2
      add
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

def view
  puts "\n"  
  puts "Pokemon in your collection: "
  @pokemons.each do |pokemon|
    puts pokemon
  end
end


def add
  puts "\n"  
  print "Enter Pokemon name: "
  name = gets.chomp
  print "Enter type: "
  type = gets.chomp
  print "Enter attack: "
  attack = gets.chomp
  @pokemons << Pokemon.new(name, type, attack)
  puts "\n"
  puts "Welcome, #{name}!"
end

def battle
end

end
