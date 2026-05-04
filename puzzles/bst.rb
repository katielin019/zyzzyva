require 'set'

# is there a BST such that the preorder, inorder, and postorder traversals spell out words?
# trying this out with 3 letter words first: need patterns ABC, BAC, BCA

# given a word, return the 3 permutations that match the pattern
def get_set(word)
  ABC = word
  BAC = word[1] + word[0] + word[2]
  BCA = word[1] + word[2] + word[0]
  return [ABC, BAC, BCA]
end

# test = ["ARE", "ERA", "EAR", "NEO", "ENO", "EON", "MAR", "ARM", "RAM"]

# test.each do |word|
  # puts "#{word}: #{get_set(word)}"
# end

# line_count = File.foreach("../by_length/3_letter_words.txt").count
# puts line_count

map = Hash.new { |hash, key| hash[key] = [] }

File.foreach("../by_length/3_letter_words.txt") do |word|
  key = word.chars.sort.join
  map[key] << word
end

# puts map.size

map.each_value do |valid_words|
  if valid_words.size > 2
    p valid_words
  end
end

# map.each_value do |valid|
#   valid_set = valid.to_set
#
#   valid.each do |word|
#     set = get_set(word)
#     if set.all? { |w| valid_set.include?(w) }
#       puts set
#     end
#   end
# end
