print "Give input please"
input = gets.chomp.split('')

#creating a hash with value as number of occurences

hash = input.group_by{|e| e}.map{|k, v| [k, v.length]}.to_h 

array2 = []
array1 = []
array = []

#grouping it into arrays

hash.each do |key,value|
  if value == 2
    array2 << key
  elsif value == 1
    array1 << key
  else 
    array << key
  end
end


puts "Numbers that appear twice #{array2}"
puts "Numbers that appear once #{array1}"
puts "Other numbers #{array}"
