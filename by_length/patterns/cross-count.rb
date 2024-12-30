# COUNTS = {1: ['A', 'J', 'S'],
          # 2: ['B', 'K', 'T'],
          # 3: ['C', 'L', 'U'],
          # 4: ['D', 'M', 'V'],
          # 5: ['E', 'N', 'W'],
          # 6: ['F', 'O', 'X'],
          # 7: ['G', 'P', 'Y'],
          # 8: ['H', 'Q', 'Z'],
          # 9: ['I', 'R']}

def main
  input = File.new('../4_letter_words.txt')
  file = File.readlines(input)
  alpha = ("A".."Z").to_a
  file.each do |word|
    word.strip!
    # if word.match?(/^[A-EJ-NS-W]Y[A-EJ-NS-W]{2}$/)
    if word.match?(/^[A-Z]Y[A-Z]{2}$/)
      vals = word.chars.map{ |c| alpha.index(c) % 9 + 1 }
      # vals = word.chars.map{ |c| (alpha.index(c) + 1) % 9 }
      puts word if vals.inject(:+) == 14
      # puts vals.inject(:+)
    end
  end
  # file.length
end

start_at = Process.clock_gettime(Process::CLOCK_MONOTONIC, :nanosecond)
main 
end_at = Process.clock_gettime(Process::CLOCK_MONOTONIC, :nanosecond)
elapsed = (end_at - start_at)/1000000

puts "Finished in 0.#{elapsed}s"
