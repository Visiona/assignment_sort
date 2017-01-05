
def insert(array, right_index, value)
  i = right_index
  while(i >= 0 && array[i] > value)
      array[i+1] = array[i]
      i -= 1
  end
  array[i+1] = value
end


def insertion_sort(array)
  1.upto(array.length - 1) do |idx|
    element = array[idx]
    insert(array, idx - 1, element)
  end
  puts "#{array}"
end

insertion_sort( [1,3,7,2,5] )
