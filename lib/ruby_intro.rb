# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  nums = []
  until arr.empty? || nums.length >= 2
    nums << arr.delete_at(arr.index(arr.max))
  end
  nums.inject(0, :+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  until arr.empty?
    if arr.include? n - arr.pop
      break
    end
  end
  arr.any?
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  (/^$|^[aeiou0-9[:punct:]]/i =~ s) == nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s == "0" || (/^[01]+[0][0]$/ =~ s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  
  def initialize isbn, price
    if isbn.empty? || price <= 0
      raise ArgumentError, "ISBN cannot be empty and price is more than $0"
    end
    @isbn, @price = isbn, price
  end
  
  def price_as_string
    "$%0.2f" % [@price]
  end

end