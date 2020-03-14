#range of armstrong numbers (An n-digit number that is the sum of the nth powers of its digits is called an n-armstrong number)

puts "Enter range (starts at 1), ends at the number that you enter: "
range = gets.chomp.to_i

number = 1

while number <= range
  temporary_number = number
  sum_angstrom = 0

  while(temporary_number != 0)
    digit = temporary_number % 10
    temporary_number /= 10
    sum_angstrom = sum_angstrom + (digit ** 3)
  end

  if (sum_angstrom == number)
    puts number
  end

  number += 1
end
