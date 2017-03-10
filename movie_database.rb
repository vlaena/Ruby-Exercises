movies = Hash.new												#declared new 'movies' hash that stores title and rating
movies = {
    Interstellar: 10
}

puts "Would you like to ADD a title, DELETE it, DISPLAY all of them or UPDATE an existing title?"		#prompts user for input
choice = gets.chomp.downcase											#needed for case statement

while choice != "add" && choice != "update" && choice != "delete" && choice != "display"			#while loop in case user input does not match options
	puts "Unknown input. Please enter one of the following: add, update, display or delete:"
	choice = gets.chomp.downcase
end


$repeat = "yes"												#default value for repeat variable, keeps user inside case statement for first run
case choice
when "add"												#case for adding
	while $repeat == "y" || $repeat == "yes"							#while repeat is yes (it is by default)
    		puts "What title would you like to add?"
    		title = gets.chomp.to_sym								#converts title to symbol
    		while movies[title] != nil								#if input title is already on the list and it has a value, prompts user for another title
	    		puts "This movie is already on the list! Please enter another title:"
	    		title = gets.chomp.to_sym
    		end
    		puts "What rating would you give this title? (1 - 10):"
    		rating = gets.chomp.to_i
    		movies[title] = rating									#creates new title key in hash, assigns rating value
		puts "Would you like to add another title?"
		$repeat = gets.chomp.downcase								#gets repeat value to add another title or quit
	end
when "update"
	while $repeat == "y" || $repeat == "yes"
   		puts "What title would you like to update?"
    		title = gets.chomp.to_sym
    		while movies[title] == nil
        		puts "This movie is not on the list! Please enter another title:"
			title = gets.chomp.to_sym
    		end
        	puts "What is the new rating for this title? Current rating is #{movies[title]}"
        	rating = gets.chomp.to_i
        	movies[title] = rating
		puts "Would you like to update another title?"
		$repeat = gets.chomp.downcase
	end
when "display"
    movies.each {|title, rating| puts "#{title}: #{rating}"}
when "delete"
	while $repeat == "y" || $repeat == "yes"
    		puts "Which title would you like to delete?"
    		title = gets.chomp.to_sym
    		while movies[title] == nil
        		puts "This movie is not on the list! Please enter another title:"
			title = gets.chomp.to_sym
    		end
        	movies.delete(title)
		puts "Would you like to remove another entry?"
		$repeat = gets.chomp.downcase
	end
end

  

