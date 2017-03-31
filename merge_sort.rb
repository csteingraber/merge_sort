def merge_sort(array)
  if array.size == 1
    return array
  else
    new_array = []
    halfway = (array.size / 2) - 1
    list1 = merge_sort(array[0..halfway])
    list2 = merge_sort(array[(halfway+1)..-1])
    until list1.empty? || list2.empty?
     list1.first < list2.first ? (new_array << list1.shift) : (new_array << list2.shift)
    end
    if !list1.empty?
      list1.each { |element| new_array << element }
    else
      list2.each { |element| new_array << element }
    end
    return new_array
  end
end