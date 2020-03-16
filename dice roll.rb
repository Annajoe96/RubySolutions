puts "Roll the dice"

@a =[]

def check 
  if @input_action == "roll"
    random = rand(1..6)
    puts random
    @a.push(random)
  elsif @input_action == "history"
    puts @a.join(",")
  end
end


loop do
  print "action please"
  @input_action = gets.chomp
  check

  if @input_action == "exit"
    break
  end
end
  
