#to count the total number ears that n number of bunnies have.
def bunny_ears(n)
  if n == 1
    return 2
  end

  2 + bunny_ears(n - 1)
end

puts bunny_ears(2)

#to count the number of triangles required to make a "number" of rows

def triangles(number)
  if number == 0
    return 0
  end

  number + triangles(number-1)

end

puts triangles(3)

#to count the total number of ears "num " bunnies have (every even numbered bunny has 3 ears and odd has 1 )

def bunny_ears(num)
  if num == 0
    return 0
  end

  if num % 2 == 0
    a = 3
  else
    a = 2
  end

  a + bunny_ears(num-1)
end

bunny_ears(2)

#to count the number of x's in a string

def count_x(string)
  return 0 if string.length == 0
  
  if string[0] == 'x'
    1 + count_x(string[1..-1])
  else
    count_x(string[1..-1])
  end
end

count_x("axyyx")

#counting the number "aba" and "abc in a string 

def count_letter(string)

  return 0 if string.length <= 2

  if string[0..2] == "abc" || string[0..2] == "aba"
    1 + count_letter(string[1..-1])
  else
    count_letter(string[1..-1])
  end

end

count_letter("abcabcabaaaaaa")



