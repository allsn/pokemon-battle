require_relative "pokemon"

def choose
  loop do
    puts "What would you like to do with #{@name}?"
    puts "1. View a Pokemon"
    puts "2. Add a Pokemon"
    puts "3. Start a battle"
    puts "4. Exit simulation"
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
end

def add
end

def battle
end
