print "Number?"
number = gets.chomp.split('').map(&:to_i)

if number.sum >= 10 
  print "can't form perfect sum"
end

number << 0
n = number.length - 1 

until number.sum == 10 do 
  number[n] += 1
end
print number.join 
