verbs = ["avoir", "etre", "aller"]
forms = ["je", "tu", "il/elle/on", "nous", "vous", "ils/elles"]
continue = true

print "What's your name player 1? "
player_1_name = String(gets.chomp)

print "What's your name player 2? "
player_2_name = String(gets.chomp)

while true do
  if continue == true
    puts "#{player_1_name}, say a sentence using the #{forms[rand(6)]} form of #{verbs[rand(3)]}..."
    puts "Hit return to continue (or q to quit) "
    quit = String(gets.chomp)
    if quit == "q"
      continue = false
    end
  end

  if continue == true
    puts "#{player_2_name}, say a sentence using the #{forms[rand(6)]} form of #{verbs[rand(3)]}..."
    puts "Hit return to continue (or q to quit) "
    quit = String(gets.chomp)
    if quit == "q"
      continue = false
    end
  end
end