MIN_SIZE = 5
MAX_SIZE = 12

# Adjust list of words based on MIN_SIZE / MAX_SIZE
def adjust_list() 
  words_list = File.readlines('english_words.txt')

  adjusted_list = words_list.map do |word|
    if word.length >= MIN_SIZE && word.length <= MAX_SIZE
      word.chomp
    end
  end

  adjusted_list.compact()
end

word = adjust_list.sample
puts word