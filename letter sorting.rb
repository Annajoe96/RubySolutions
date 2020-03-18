puts "Give a word"
word = gets.chomp.downcase.split("")

hash= {}
#looping through array of string(user's input)
word.each do |i|
  if hash[i]
    hash[i] += 1
  else 
    hash[i] = 1
  end
end

hash = hash.sort_by {|key,value| value}.reverse 

hash.each do |key, value|
  value.times{print key}
end
puts ""

puts "letters sorted according number of occurences in the word"
