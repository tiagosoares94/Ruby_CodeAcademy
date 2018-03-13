=begin
 Lesson 1: A script to format users inputs.    
=end

print "Whats your first name? "
first_name = gets.chomp
first_name.capitalize!
print "Whats your last name? "
last_name = gets.chomp
last_name.capitalize!
print "Whats your city? "
city = gets.chomp
city.capitalize!
print "Whats your state? "
state = gets.chomp
state.upcase!

puts "Your name is #{first_name} #{last_name}, you live at #{city}-#{state}"