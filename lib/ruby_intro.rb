# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.reduce(:+).to_i
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort!.reverse.take(2).reduce(:+).to_i
end

def sum_to_n? arr, n
  return false if arr.size < 2
  # YOUR CODE HEiRE
  soma_correta = false 
  arr.combination(2).map do |c| 
    soma_correta = true if c.reduce(:+) == n
  end

  soma_correta
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  !!/\A[bcdfghjklmnpqrstvwxz]+/.match(s.downcase)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  !!/\A(0|[01]+0{2})\z/.match(s)
end

# Part 3

class BookInStock
  attr_reader :isbn, :price

  def initialize user_isbn, user_price
     self.isbn= user_isbn
     self.price= user_price
  end
  
  def isbn= user_isbn
    raise ArgumentError unless ((user_isbn.is_a? String) && user_isbn.size > 0)
    @isbn = user_isbn 
  end

  def price= user_price
    raise ArgumentError unless ((user_price.is_a? Numeric) && user_price > 0)
    @price = user_price
  end

  def price_as_string
    sprintf("$%#.2f", @price)
  end
end
