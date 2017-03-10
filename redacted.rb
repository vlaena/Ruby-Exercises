puts "Enter a text: "									#prompts user for stuff
text = gets.chomp
puts "Enter a number of words to redact: "
$nr = gets.chomp.to_i

if $nr > 5 										#if user picks too many words / enters something not an integer
	puts "Less words, this ain't Google: "
	$nr = gets.chomp.to_i
elsif $nr == 0 || !$nr.respond_to?(:next)	
	while $nr == 0 || !$nr.respond_to?(:next) do
		puts "A number please: "
		$nr = gets.chomp.to_i
	end
end

choices = Array.new									#declared array with user choices

$nr.times do |x| 
	print "Enter word nr. #{x+1}: "
	choices << gets.chomp 
end

words = text.split(" ")
final = Array.new

choices.each do |redact|								#takes each element of user input array
	words.map! do |x|								#compares and replaces elements of initial text
		if ( x == redact ) || ( x.downcase == redact.downcase )
			'REDACTED'
		else
			x
		end
	end
end

words = words.join(" ")									#turns array into a 'sentence'
puts "Your final text is: #{words}."							#displays final result
gets.chomp



