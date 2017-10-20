def bubble_sort(array)
  temp_value = 0
  while temp_value != nil
    temp_value = nil
    (array.length - 1).times do |idx|
      if array[idx] > array[idx + 1]
        array[idx], array[idx + 1] = array[idx + 1], array[idx]
      end
    end
  end
  puts "#{array}"
end

bubble_sort( [1,3,7,2,5] )
