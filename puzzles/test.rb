require 'set'

# is there a BST such that the preorder, inorder, and postorder traversals spell out words?
# trying this out with 3 letter words first: need patterns ABC, BAC, BCA

# given a word, return the 3 permutations that match the pattern
def get_set(word)
  preorder = word
  inorder = word[1] + word[0] + word[2]
  postorder = word[1..] + word[0]
  return [preorder, inorder, postorder]
end

# test = ["ARE", "ERA", "EAR", "NEO", "ENO", "EON", "MAR", "ARM", "RAM"]

words = ["ASP", "SPA", "SAP", "PAS"]

words.each do |word|
  puts "#{word}: #{get_set(word)}"
end
