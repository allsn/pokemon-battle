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
comp_result_1 = "#{competitor.name} used #{competitor.attack} and wounded #{opponent.name}!"
comp_result_2 = "#{competitor.name} used #{competitor.attack} and #{opponent.name} fainted! You WIN!"
comp_result_3 = "#{opponent.name} ran away. The battle is over!"
opp_result_1 = "#{opponent.name} used #{opponent.attack} and wounded #{competitor.name}!"
opp_result_2 = "#{opponent.name} used #{opponent.attack} and #{competitor.name} fainted! You LOSE!"
comp_moves = [comp_result_1, comp_result_2, comp_result_3]
opp_moves = [opp_result_1, opp_result_2]

puts "You've selected #{competitor.name.upcase}"
puts "#{competitor.name.upcase} will battle #{opponent.name.upcase}. Let's begin!"

puts "\n"  
puts "Choose your next move: 1. HIT or 2. RUN AWAY"
move_select = gets.chomp.to_i
puts "\n"

    case move_select
    when 1
      add
    when 2
      puts "You ran away! Better luck next time :)"
    else
      puts "You must select 1 or 2."
    end


end

end
