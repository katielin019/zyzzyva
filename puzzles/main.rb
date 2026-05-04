require 'set'

map = Hash.new { |hash, key| hash[key] = [] }

File.foreach("../by_length/3_letter_words.txt", chomp: true) do |word|
  key = word.chars.sort.join
  map[key] << word
end

map.each_value do |words|
  next if words.size < 3
  p words
  word_set = words.to_set

  words.each do |word|
    a, b, c = word.chars
    bac = "#{b}#{a}#{c}"
    bca = "#{b}#{c}#{a}"

    if word_set.include?(bac) && word_set.include?(bca)
      puts "#{word} #{bac} #{bca}"
    end
  end
end
