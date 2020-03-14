#finding the longest palindrome in a word

#forming an array of different combinations of the word

def list_of_combinations(word) 
  word = word.split("")
  wordlist = []

  index1 = 0
  index2 = 1

  loop do 
    combination = word[index1..index2].join("")
    wordlist << combination
    index2 += 1
    if index2 >= word.length
      index1 += 1
      index2 = index1 + 1
    end

    if index1 >= word.length-1
      break
    end
    
  end
  wordlist
end

#

def find_Palindrome(list)
  palindromes = []
  list.each do |palindrome|
    if palindrome == palindrome.reverse
      palindromes << palindrome
    end
  end
  palindromes
end

def find_Longest_Palindrome(palindromelist)
  palindromelist.max_by(&:length) 
end

find_Longest_Palindrome(find_Palindrome(list_of_combinations("maaaaaaaaaaaaaaaaaaad")))
