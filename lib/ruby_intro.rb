# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.empty?
    return 0
  else
    return arr.inject(:+)
  end
end

def max_2_sum arr
  if arr.empty?
    return 0
  else
    return arr.max(2).reduce(:+)
  end
end

def sum_to_n? arr, n
  if arr.empty? || arr.length == 1
    return false
  else
    return !!arr.uniq.combination(2).detect { |a, b| a + b == n }
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
