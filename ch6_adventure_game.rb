=begin

user starts by moving forward
user can move forward, right or left
if user moves right => dies (goblin)
if user moves left => dies (werewolf)
if user moves forward => live
if user moves forward twice => win

order...
1. welcome user, instruct they are facing forward
2. allow user to move forward (once)
3. allow user to move forward (twice) => win message
4. add right move option => die (goblin) message
5. add left move option => die (werewolf) message

=end

win_counter = 0
puts "Welcome to the text adventure game!"

while true do
  puts "Type 'f' to move forward, 'r' to move right, 'l' to move left: "
  move = gets.chomp

  if move.downcase == "f"
    win_counter += 1
    return puts "Congratulations, you win!" if win_counter == 2
    puts "Good move, you're safe."
  elsif move.downcase == "r"
    return puts "Aaarrrrgghhh, you've been eaten by a goblin, you lose!"
  elsif move.downcase == "l"
    return puts "Aaarrrrgghhh, you've been eaten by a werewolf, you lose!"
  end
end  
