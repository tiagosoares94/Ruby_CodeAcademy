=begin
 Lesson 2: Exercise to learn more about control flow and Ruby Syntax    
=end

print "What is your name? "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
end

puts "Adios, #{user_input}!"