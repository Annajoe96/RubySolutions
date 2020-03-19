def find_smallest_and_largest_number(array)
  smallest = array[0]
  largest = array[0]

  array.each do |i|
    if smallest > i
      smallest = i
    end

    if largest < i
      largest = i
    end
  end

  [smallest, largest]
end

array = [2,3,69,2,1,4,3]
print find_smallest_and_largest_number(array)
