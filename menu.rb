require_relative "pokemon"


class Menu
  def initialize
    @pokemons = []
  end

def choose

  loop do
    puts "\n"    
    puts "What would you like to do next?"
    puts "1. View all Pokemon"
    puts "2. Add a Pokemon"
    puts "3. Start a battle"
    puts "4. Exit"
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
      puts "Thanks for playing! Come back to catch 'em all!"
      break
    else
      puts "Please choose an option between 1 and 5."
    end
  end
end

def view
  puts "Pokemon in your collection:"
  @pokemons.each do |pokemon|
    puts pokemon
  end
end


def add
  print "Enter Pokemon name: "
  name = gets.chomp
  print "Enter type: "
  type = gets.chomp
  print "Enter attack: "
  type = gets.chomp
  @pokemon << Pokemon.new(name, type, attack)
  puts "Welcome, #{name}!"
end

#def battle
#end

end
