require_relative "pokemon"


class Menu
  
  def initialize
    @pokemons = []
  end

  puts "\n"    
  puts "Welcome to the world of POKEMON!"

  def run
    
    loop do
      puts "\n"
      puts "What would you like to do next? \n \n"
      puts "1. Add a Pokemon"
      puts "2. View all Pokemon"
      puts "3. Start a battle"
      puts "4. Say bye for now  \n \n"
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
      puts "Thanks for playing! Come back to catch 'em all!  \n \n"
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
  puts "Welcome, #{name.upcase}!  \n \n"
end

def view
  puts "\n"  
  puts "Pokemon in your collection: "
    if @pokemons.empty?
      puts "None. Go back and add some! \n \n"
    else
      @pokemons.each_with_index do |pokemon, index|
      puts "#{index + 1}. #{pokemon.name.upcase} ~ #{pokemon.type.capitalize} type Pokemon with #{pokemon.attack.capitalize} attack"
    end
  end
end


def battle

if @pokemons.empty?
  puts "\n"
  puts "Go back and add some Pokemon first :) \n \n"
else

puts "\n"  
puts "Choose your Pokemon by typing its assigned number: "
view
puts "\n"  
poke_select = gets.chomp.to_i
puts "\n"

competitor = @pokemons[poke_select - 1]
opponent = @pokemons.sample
comp_result_1 = ["#{competitor.name.upcase} used #{competitor.attack.capitalize} and wounded #{opponent.name.upcase}!"]
comp_result_2 = ["#{competitor.name.upcase} used #{competitor.attack.capitalize} and #{opponent.name.upcase} fainted! You WIN!"]
opp_result_1 = ["#{opponent.name.upcase} used #{opponent.attack.capitalize} and wounded #{competitor.name.upcase}!"]
opp_result_2 = ["#{opponent.name.upcase} used #{opponent.attack.capitalize} and #{competitor.name.upcase} fainted! You LOSE!"]
@comp_moves = [comp_result_1, comp_result_1, comp_result_1, comp_result_2]
@opp_moves = [opp_result_1, opp_result_1, opp_result_1, opp_result_2]

puts "You've selected #{competitor.name.upcase}"
puts "#{competitor.name.upcase} will battle #{opponent.name.upcase}. Let's begin!"


  def in_battle
    puts "\n"  
    puts "Choose your next move: 1. HIT or 2. RUN AWAY"
    move_select = gets.chomp.to_i
    puts "\n"
  
      case move_select
        when 1
#          puts @comp_moves.sample 
         puts battle.comp_result_2
#          puts @opp_moves.sample
         puts battle.opp_result_2

#          until @comp_moves.sample == battle.comp_result_2 || @opp_moves.sample == battle.opp_result_2
#            puts @comp_moves.sample
#            puts @opp_moves.sample           
#          end
        when 2
          puts "You ran away! Better luck next time :) \n \n"
         else
           puts "You must select 1 or 2."
           in_battle
      end
  end

  in_battle
    
end

end

end
