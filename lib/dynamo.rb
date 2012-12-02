class Dynamo
	WORDS ||= IO.readlines("./lib/words.txt").map(&:chomp).uniq!
	
	def initialize
	end

	def generate_password(style=:simple,words_in_password = 4)
		word_array = []
		words_in_password.times{ word_array << WORDS.sample }
		case style
		when :simple
			word_array.join(' ')
		when :complex
		end
	end
end