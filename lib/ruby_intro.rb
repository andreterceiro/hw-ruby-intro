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
# YOUR CODE HERE
end
