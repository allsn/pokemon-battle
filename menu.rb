require_relative "pokemon"

class Menu
  attr_reader :pokemons

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
      print "Choose an option: "

      choice = gets.chomp.to_i

      case choice
      when 1
        add_poke
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

  def poke_added(name, type, attack)
    pokemon = Pokemon.new(name, type, attack)
    @pokemons << pokemon
  end

  def add_poke
    puts "\n"
    print "Enter Pokemon name: "
    name = gets.chomp
    print "Enter type: "
    type = gets.chomp
    print "Enter attack: "
    attack = gets.chomp

    poke_added(name, type, attack)

    puts "\n"
    puts "Welcome, #{name.upcase}!"
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
      print "Choose your Pokemon by typing its assigned number: \n"
      view
      puts "\n"
      print "I choose you: "
      poke_select = gets.chomp.to_i
      puts "\n"

      competitor = @pokemons[poke_select - 1]
      opponent = @pokemons.sample
      comp_result_1 = "#{competitor.name.upcase} used #{competitor.attack.capitalize} and wounded #{opponent.name.upcase}!"
      comp_result_2 = "#{competitor.name.upcase} used #{competitor.attack.capitalize} and #{opponent.name.upcase} fainted! You WIN!"
      opp_result_1 = "#{opponent.name.upcase} used #{opponent.attack.capitalize} and wounded #{competitor.name.upcase}!"
      opp_result_2 = "#{opponent.name.upcase} used #{opponent.attack.capitalize} and #{competitor.name.upcase} fainted! You LOSE!"
      @comp_moves = [comp_result_1, comp_result_1, comp_result_1, comp_result_2]
      @opp_moves = [opp_result_1, opp_result_1, opp_result_1, opp_result_2]

      puts "You've selected #{competitor.name.upcase}"
      puts "#{competitor.name.upcase} will battle #{opponent.name.upcase}. Let's begin!"

      in_battle
    end
  end

  def in_battle
    loop do
      puts "\n"
      puts "Choose your next move: 1. HIT or 2. RUN AWAY"
      move_select = gets.chomp.to_i
      puts "\n"

      case move_select
      when 1
        my_move = @comp_moves.sample
        your_move = @opp_moves.sample

        if my_move != @comp_moves[3] && your_move != @opp_moves[3]
          puts my_move
          puts your_move
          next
        elsif my_move == @comp_moves[3] && your_move != @opp_moves[3]
          puts my_move
          break
        else
          puts your_move
          break
        end
      when 2
        puts "You ran away! Better luck next time :)"
        break
      else
        puts "You must select 1 or 2"
      end
    end
  end
end
