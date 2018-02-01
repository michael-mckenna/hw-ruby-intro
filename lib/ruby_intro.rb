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
    # detects if the sum of each possible unique combination of two values equals n
    return !!arr.uniq.combination(2).detect { |a, b| a + b == n }
  end
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  # regex to see if string s starts with a consonant
  return /^[^aeiou\W]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # regex doesn't work for 0 so I have a manual check
  if s == "0" 
    return true
  else
    return /^[01]*(00)$/.match(s) 
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)  
    if isbn.empty? 
      raise ArgumentError.new("ISBN should not be empty")
    elsif price <= 0
      raise ArgumentError.new("Price must be greater than or equal to 0")
    end

    # Instance variables  
    @isbn = isbn  
    @price = price  
  end 

  def price_as_string
    return "$" + ('%.2f' % price.round(2))
  end

  def isbn
    return @isbn
  end 

  def isbn=(value)
    @isbn = value
  end

  def price
    return @price
  end

  def price=(value)
    @price = value
  end
end
