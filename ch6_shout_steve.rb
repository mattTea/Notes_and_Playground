# 1. Long form...

# print "Hi, please enter your name: "
# user_name = gets.chomp

# if user_name[0].downcase == "s"
# # if user_name.chr.downcase == "s" # .chr gets the first char in a string
#   puts "#{user_name.upcase}!"
# else
#   puts "Hi, #{user_name.capitalize}."
# end


# 2. Alternative refactor...

# print "Hi, please enter your name: "
# user_name = gets.chomp

# return puts "#{user_name.upcase}!" if user_name.chr.downcase == "s"
# return puts "Hi, #{user_name.capitalize}."


# 3. Alternative refactor...

print "Hi, please enter your name: "
user_name = gets.chomp

puts (user_name.chr.downcase == "s" ? "#{user_name.upcase}!" : "Hi, #{user_name.capitalize}.")