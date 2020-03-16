@correctans = 1
@stringanswer = "1"
point = 0

#method to check the answer with correctanswer 
def update_correctans
  if @correctans % 5 == 0
    @stringanswer = "buzz"
  elsif @correctans % 3 == 0
    @stringanswer = "fizz"
  elsif @correctans % 5 == 0 && % 3 == 0
    @stringanswer = "fizzbuzz"
  else
    @stringanswer = @correctans.to_s
  end
end

#one can choose to start or not

ans = ""
while !(ans == "yes" || ans == "no")
  print "Do you want to go first (yes or no)?"
  ans = gets.chomp
end


if ans == "no"
  puts @correctans
  @correctans += 1
  update_correctans
else
  puts "Please start"
end

#loop to continue the game
loop do
  print "Your turn : "
  u = gets.chomp.to_s

  update_correctans
  
  if u == @stringanswer
    puts "good job!"
    point += 1
  else
    break
  end
  
  @correctans += 1
  update_correctans
  
  puts "Computer : #{@stringanswer}"
   
  @correctans += 1
end

puts "game over"
puts "You scored #{point}."



  




  
