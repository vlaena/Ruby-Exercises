class PrimeChecker
	def initialize									
		p "Enter max number: "							
		@n = gets.chomp.to_i							#gets user input, sets maximum element of array
		@i = 2									#initializes i, used later
		@k = @n / @i								#value used in for loop later
	end
	
	def create
		@primes = Array(2..@n)							#creates new array containing @n-1 elements
		@primes								
	end

	def check
		@primes.each do |x|							#iterates through the array, deletes multiples of x
			for @i in 2..@k do						#and leaves only the prime numbers
				el = (@i * x)						
				@primes.delete(el)
			end
		end
	end

	def display									
		puts "The prime numbers between 2 and #{@n} are: #{@primes}."
		puts "Number of primes is #{@primes.size}."				#displays array size for verifying the result
	end
end

obj = PrimeChecker.new
obj.create
obj.check
obj.display
