class Dynamo
  dictionary_path = File.expand_path('../words.txt', __FILE__)
  WORDS           ||= IO.readlines(dictionary_path).map(&:chomp).uniq!

  def initialize
  end

  def generate_password(style = :simple, words_in_password = 4)

  word_array = []

  words_in_password.times{ word_array << WORDS.sample }

    case style
    when :simple
      word_array.join(' ')
    when :complex
      digits = %w(0 1 2 3 4 5 6 7 8 9)
      word_array.first.capitalize!
      word_array.shuffle.join('-').sub!(/-/, digits.sample)
    end
  end
end
