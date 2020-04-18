def minmax(array)
  min = array[1]
  max = array[1]

  array.each do |i|
    if min > i 
      min = i
    end
    
    if max < i
      max = i
    end
  end

  median_approx = (min + max)/2
  min_diff = (array[1] - median_approx).abs
  
  array.each do |i|
    if (i - median_approx).abs < min_diff
      min_diff = i
    end
  end
  min_diff
   
end

print minmax([5,3,4,6,15,2])
