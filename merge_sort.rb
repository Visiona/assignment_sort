
def merge(left_arr, right_arr)
  new_arr = []
  unless left_arr.nil? || right_arr.nil?
    while left_arr.any? || right_arr.any?
      if left_arr.empty?
        new_arr << right_arr[0]
        right_arr = right_arr[1..-1]
      elsif right_arr.empty?
        new_arr << left_arr[0]
        left_arr = left_arr[1..-1]
      elsif left_arr[0] > right_arr[0]
        new_arr << right_arr[0]
        right_arr = right_arr[1..-1]
      else
        new_arr << left_arr[0]
        left_arr = left_arr[1..-1]
      end
    end
  end
  new_arr
end

def merge_sort(array)
  if array.length == 1
    array
  else
    left_arr = array[0...array.length/2]
    right_arr = array[array.length/2..-1]
    # // mergeSort() the left half of the array
    # merge_sort(left_arr)
    # // mergeSort() the right half of the array
    # merge_sort(right_arr)
    # // merge() the two halves
    merge(merge_sort(left_arr), merge_sort(right_arr))
  end
end

merge_sort( [1,3,7,2,5,4,30,22,80,50,6] )
