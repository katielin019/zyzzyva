def main
  input = File.new('../4_letter_words.txt')
  file = File.readlines(input)

  file.each do |x|
    puts x if x.match?(/^[A-Z]Y[A-Z]{2}$/)
  end
  # file.length
end

start_at = Process.clock_gettime(Process::CLOCK_MONOTONIC, :nanosecond)
main 
end_at = Process.clock_gettime(Process::CLOCK_MONOTONIC, :nanosecond)
elapsed = (end_at - start_at)/1000000

puts "Finished in 0.#{elapsed}s"
