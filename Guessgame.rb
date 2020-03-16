puts "Hey there! Welcome to the guessing game."
puts "I am going to think of a number between 0 to 9 and you are going to guess it "
puts "Okay I have thought of a number."

@rand_no = rand(0..9)

@chances = 0

#method to check the answer
def wrong_ans
  puts "What do you think it is ?"
  @guess_no = gets.chomp.to_i

  if @guess_no > @rand_no
    puts "go a little lower"
  elsif @guess_no < @rand_no
    puts "go a little higher"
  end

  @chances += 1
end
#loop to keep the game going till the number is guessed
loop do
  if @guess_no == @rand_no
    break
  else
    wrong_ans
  end
end

puts "Woohoo you got it in #{@chances}"

  

