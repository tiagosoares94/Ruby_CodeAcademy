=begin
In this project, we'll use our knowledge of Ruby hashes and symbols to construct a program that displays,
adds, updates, and removes movie ratings!
=end

movies = {
	Forrest_Gump: 4  
}

puts "What do you want to do?"
choice = gets.chomp

case choice
  when "add"
  	puts "What is the name of movie?"
  	title = gets.chomp
  	if movies[title.to_sym].nil?
  		puts "What is the rating of this movie?"
  		rating = gets.chomp
  		movies.store(title.to_sym,rating.to_i)
      puts "#{title} added with rating: #{rating}"
    else
      puts "This movie already exists in our hash"
    end
  when "update"
  	puts "Which movie do you want to update?"
  	title = gets.chomp
  	if movies[title.to_sym].nil?
      puts "This movie doesn't exists in our hash"
    else
      puts "What is the new rating?"
      rating = gets.chomp
      movies.store(title.to_sym,rating.to_i)
      puts "movie updated!"
    end
  when "display"
  	movies.each do |movie, rating|
      puts "#{movie}: #{rating}"
    end
  when "delete"
  	puts "Which movie do you want to delete?"
  	title = gets.chomp
  	if movies[title.to_sym].nil?
      puts "This movie doesn't exists in our hash"
    else
      movies.delete(title.to_sym)
      puts "movie deleted!"
    end
else
  puts "Error!"
end
