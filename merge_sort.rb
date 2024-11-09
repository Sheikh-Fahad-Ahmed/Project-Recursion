def merge_sort(array)
  if array.length <= 1
    array
  else
    mid = array.length / 2
    left_arr = merge_sort(array[0...mid])
    right_arr = merge_sort(array[mid...array.length])
    merge(left_arr, right_arr)
  end
end

def merge(array1, array2)
  result = []
  i = 0
  j = 0
  while i < array1.length && j < array2.length
    if array1[i] > array2[j]
      result.push(array2[j])
      j += 1
    else
      result.push(array1[i])
      i += 1
    end
  end
  while i < array1.length
    result.push(array1[i])
    i += 1
  end
  while j < array2.length
    result.push(array2[j])
    j += 1
  end
  result
end


p merge_sort([105, 79, 100, 110])
