require_relative "pokemon"


class Main
  def initialize
    @pokemon = []
  end


def choose

  #choose a pokemon

  loop do
    puts "\n"    
    puts "What would you like to do next?"
    puts "1. View #{@name}'s profile"
    puts "2. Add a Pokemon"
    puts "3. Start a battle with #{@name}"
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
      puts "Please choose an option between 1 and 4."
    end
  end
end

def view
  #"#{name} is a #{type} type Pokemon. Its attacks include: #{attack}.""
end

def add
  print "Enter Pokemon name: "
  name = gets.chomp
  print "Enter Pokemon type: "
  type = gets.chomp
  print "Enter attack: "
  type = gets.chomp
  @pokemon << Pokemon.new(name, type, attack)
  puts "Welcome, #{name}"
end

#def battle
#end
