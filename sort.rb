def insert(array, right_index, value)
    # value is the value of array[right_index + 1]
    # right_index is the furthest right sorted element

    # Step through sorted elements right to left.
    # As long as your value is less than the element
    # at array[i] and you still have elements
    i = right_index
    while(i >= 0 && array[i] > value)
        # copy the element
        array[i+1] = array[i]
        i -= 1
    end

    # insert the actual element
    array[i+1] = value;
end

def insertion_sort(lst)
  sorted = [lst[0]]

  lst[1..-1].each_with_index do |item, index|
    insert(sorted, index, item)
  end

  sorted
end

def bubble_sort(lst)
  no_swaps = false
  until no_swaps
    no_swaps = true
    lst[0..-2].each_with_index do |item, index|
      if lst[index] > lst[index+1]
        lst[index], lst[index+1] = lst[index+1], lst[index]
        no_swaps = false
      end
    end
  end
  lst
end

def merge_sort(lst)
  if lst.length <= 1
    return lst
  end

  right_array = lst.slice!((lst.length / 2)..lst.length)

  left_sorted = merge_sort(lst)
  right_sorted = merge_sort(right_array)

  return merge(left_sorted, right_sorted)

end

def merge(left, right)
  return left if right.empty?
  return right if left.empty?

  if left.first <= right.first
    smallest = left.shift
  else
    smallest = right.shift
  end

  return [smallest] + merge(left, right)
end

#.00127


