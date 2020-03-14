#program to add words into a dictionary. respond to first question with "yes" or "no" and type "give dictionary" to get the complete set of words. 


puts "Do you need to add a word to your dictionary"
input = gets.chomp
dictionary = []
a = 1
wordarray = []
sorteddictionary = []

if input == "yes"
  until input == "give dictionary" do 
    puts "your words?"
    input= gets.chomp
    if input != "give dictionary"
      dictionary << input
    end
  end
  dictionary = dictionary.sort_by {|e| [-e.length, e]}
end
puts dictionary
