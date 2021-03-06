#hash of roman numerals
@dictionary = {
  'I': 1,
  'V': 5,
  'X': 10,
  'L': 50,
  'C': 100,
  'D': 500,
  'M': 1000
}

@user_input = ""

#method to check if user input is valid
def is_valid?
  @user_input.split('').each do |letter|
    unless @dictionary.keys.include?(letter.to_sym)
      return false
    end
  end

  true
end

loop do
  print "Provide a roman numeral for conversion"
  @user_input = gets.chomp.upcase

  break if is_valid?
end

#method to convert the string of roman numerals to a number 
def convert_string_to_int_numbers
  @user_input.split('').map do |letter|
    @dictionary[letter.to_sym]
  end
end

numerical = convert_string_to_int_numbers.reverse

total = numerical[0]

index = 0
while index < numerical.size - 1
  current_value = numerical[index]
  next_value = numerical[index + 1]

  if next_value >= current_value
    total += next_value
  else
    total -= next_value
  end

  index += 1
end

puts total


