class Dynamo
	WORDS ||= IO.readlines("./lib/words.txt").map(&:chomp).uniq!
	
	def initialize
	end

	def generate_password(words_in_password = 4)
		word_array = []
		words_in_password.times{ word_array << WORDS.sample }
		word_array.join(' ')
	end
end