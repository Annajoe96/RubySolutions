print "How much is the cost?"
cost = gets.chomp.to_f

user_paid = 0

while user_paid < cost

  print "How much did the customer pay?"
  user_paid = gets.chomp.to_f

  if user_paid < cost
    puts "You still owe #{cost - user_paid}"
  else
    break
  end

end

puts user_paid
puts cost

change = user_paid - cost
puts change

denominations = [0.01, 0.02, 0.05, 0.10, 0.20, 0.50, 1, 2, 5, 10, 20, 50, 100, 200, 500].reverse


while change > 0
  denominations.each do |denomination|
    if denomination <= change
      multiples = (change / denomination).to_i

      change -= denomination * multiples
      puts "£#{denomination} x#{multiples}"

      break
    end
  end

end
