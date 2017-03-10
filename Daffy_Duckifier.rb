class Program
	def prompts
		print "Pleathe enter a thring:"
	end
	def text
		user_input = gets.chomp
		while user_input.empty? || !((user_input.include? "s") || (user_input.include? "S")) do
   			puts "Pleathe enter a thentence containing the letter S:"
  			user_input = gets.chomp
		end

		user_input.gsub!(/s/, "th")				  #substitutes "s" for "th"
		user_input.gsub!(/S/, "Th")

		puts "Your string is: #{user_input}"
	end

end

$x = 0

while $x != 1
	instance = Program.new
	instance.prompts
	instance.text
	puts "Type Y/N to Repeat or Exit"
	prompt = gets.chomp
		if ( prompt == "N" ) || ( prompt == "n" )
			$x += 1
		end
end



