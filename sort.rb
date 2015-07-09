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

  return merge_i(left_sorted, right_sorted)

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

#Finshed in 0.00127

def merge_i(left, right)
  
  sorted = []

  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end

  sorted + (left) + (right)


end

#Finished in 0.00251 seconds

# lst must be 10+ elements
# def really_cheating_quick_sort(lst)
#   lst.sort
# end

def quick_sort(lst)
  return lst if lst.length <= 1
  pivot = lst.shuffle.shift
  left, right = lst.partition {|val| val < pivot}
  quick_sort(left) + quick_sort(right)
end

# For sake of explaining, pivot is middle point
# or left-of-middle value if even element array
# [7,6,5,4,3,2,1]
# pivot = 4
# lst = [7,6,5,3,2,1]
# left, right = lst.partition {criteria}
# left = [4,3,2,1]
# right = [7,6,5]

# quick_sort(right)
# [7,6,5]
# pivot = 6
# left = [5]
# right = [7,6]
# quick_sort(5) + quick_sort(7,6)

# 5 + quick_sort(7,6)

#     quick_sort([7,6])
#     pivot = 7
#     left = 6
#     right = 7
#     quick_sort(6) + quick_sort(7)

# quick_sort(left) +  5 + 6 + 7

# quick_sort(left)
# [4,3,2,1]
# pivot = 2
# left = [1]
# right = [4,3,2]
# quick_sort([1]) + quick_sort([4,3,2])

# 1 + quick_sort([4,3,2]) + 5 + 6 + 7

  # quick_sort([4,3,2])
  # [4,3,2]
  # pivot = 3
  # left = [2]
  # right = [4,3]

  # 1 + 2 + quick_sort([4,3]) + 5 + 6 + 7

    # quick_sort([4,3])
    # [4,3]
    # pivot = 4
    # left = [3]
    # right = [4]
    # 1 + 2 + quick_sort([3]) + quick_sort([4]) + 5 + 6 + 7

# 1 + 2 + 3 + 4 + 5 + 6 + 7

# [1,2,3,4,5,6,7]


