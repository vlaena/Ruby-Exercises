class PrimeChecker
	def initialize
		p "Enter max number: "
		@n = gets.chomp.to_i
		@i = 2
		@k = @n / @i
	end
	
	def create
		@primes = Array(2..@n)
		@primes
	end

	def check
		@primes.each do |x|
			for @i in 2..@k do
				el = (@i * x)
				@primes.delete(el)
			end
		end
	end

	def display
		puts "The prime numbers between 2 and #{@n} are: #{@primes}."
		puts "Number of primes is #{@primes.size}."
	end
end

obj = PrimeChecker.new
obj.create
obj.check
obj.display
