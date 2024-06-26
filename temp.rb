def in_battle
  puts "\n"  
  puts "Choose your next move: 1. HIT or 2. RUN AWAY"
  move_select = gets.chomp.to_i
  puts "\n"

    case move_select
      when 1
        puts comp_moves.sample
        puts opp_moves.sample
      when 2
        puts "You ran away! Better luck next time :)"
       else
         puts "You must select 1 or 2."
        in_battle
    end
end



when 1
  until @comp_moves.sample == @comp_moves[3] || @opp_moves.sample == @opp_moves[3]
    puts @comp_moves.sample
    puts @opp_moves.sample
    next
  end


when 1
  loop do
    

end


when 1
  while @comp_moves.sample != @comp_moves[3] && @opp_moves.sample != @opp_moves[3]
    puts @comp_moves.sample
    puts @opp_moves.sample
    next
end
