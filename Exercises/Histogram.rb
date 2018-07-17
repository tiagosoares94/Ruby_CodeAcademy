=begin
A script that takes a user's input, then builds a hash from that input. 
=end

puts "Digite um texto:"
text = gets.chomp
words = text.split
frequencies = Hash.new(0)

words.each do |x|
  frequencies[x] += 1
end

frequencies = frequencies.sort_by do |words,count|
  count
end

frequencies.reverse!

frequencies.each do |words, count|
  puts words + " " + count.to_s
end
