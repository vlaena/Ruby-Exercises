puts "A, B, C?"
$ui = gets.chomp

case $ui
	when "A"
		puts "Ai selectat A"
		puts "Vrei sa selectezi alta litera? Y/N"
		select = gets.chomp.downcase
		if select == "y"
			puts "Ce litera?"
			$ui = gets.chomp
		elsif select == "n"
			puts "Ok, pa"
		end
	when "B"
		puts "Ai selectat B"
		puts "Vrei sa selectezi alta litera? Y/N"
		select = gets.chomp.downcase
		if select == "y"
			$ui = gets.chomp
		elsif select == "n"
			puts "Ok, pa"
		end
	end
