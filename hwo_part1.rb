# method to reload the file
def reload
    load 'hwo_part1.rb'
    # Load any other necessary files here ...
end

def sum (arr)
  arr.inject(0, :+)
end

def max_2_sum (arr)
  if arr.empty?
    0
  elsif arr.count == 1
    arr.first
  else
    arr.max + arr.min
  end
end

# http://stackoverflow.com/questions/23572515/check-if-the-sum-of-two-different-numbers-in-an-array-equal-a-variable-number
def sum_to_n? (arr, n)
  !!arr.uniq.combination(2).detect { |a, b| a + b == n }
end

def hello(name)
  "Hello, " + name
end

def starts_with_consonant?(s)
  /\A[aeiou]/i.match(s).nil?
end

def binary_multiple_of_4?(s)
  !/^[10]*00$/.match(s).nil?
end


