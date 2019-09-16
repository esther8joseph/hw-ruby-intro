# When done, submit this entire file to the autograder.
# Esther Joseph
# Part 1

def sum arr
  if (arr.empty? == true) or (arr.nil? == true)
    0
  else
    arr.inject{|sum,n| sum + n} 
  end
end


def max_2_sum arr
  if (arr.empty? == true) or (arr.nil? == true)
    0
  else
    max_ordered_array = arr.sort{|a, b| b <=> a}
    a = max_ordered_array.at(0)
      if a == nil
        a = 0
      end
    b = max_ordered_array.at(1)
      if b == nil
        b = 0
      end
    a + b
  end
end


#ask 
def sum_to_n? arr, n
  if (arr.empty? == true) or (arr.nil? == true)
    false 
  else
    if arr.length == 1 #this part needs help
      false
    end
    sum_of_array = arr.inject{|sum,n| sum + n} 
    if (sum_of_array == n) #this part also needs help
      true
    else
      false
    end
  end
end

# Part 2

def hello(name)
  hello_statement = "Hello, " + name 
  return hello_statement
end

=begin
Define a method starts_with_consonant?(s) that takes a string and returns true 
if it starts with a consonant and false otherwise. (For our purposes, a 
consonant is any letter other than A, E, I, O, U.) NOTE: be sure it works
for both upper and lower case and for nonletters! Run associated tests via:
$ rspec -e '#starts_with_consonant?' spec/part2_spec.rb
=end
def starts_with_consonant? s
  if s.empty? == false
    s = s.downcase
    if s[0].match?(/[a-z]/) == true and s[0].match?(/[aeiou]/) == false
     return true
    end
  else
    return false
  end
end

=begin
Define a method binary_multiple_of_4?(s) that takes a string and returns true
if the string represents a binary number that is a multiple of 4. 
NOTE: be sure it returns false if the string is not a valid binary number!
Run associated tests via: $ rspec -e '#binary_multiple_of_4?' spec/part2_spec.rb
=end
def binary_multiple_of_4? s
  if s.match?(/[^0-1]/) == false
    if s[s.length - 1] == '0' and s[s.length - 2] == '0'
      return true
    end
  else
    return false
  end
end

# Part 3

=begin
Define a class BookInStock which represents a book with an ISBN number, isbn,
and price of the book as a floating-point number, price, as attributes.
Run associated tests via: $ rspec -e 'getters and setters' spec/part3_spec.rb

The constructor should accept the ISBN number (a string, since in real life 
ISBN numbers can begin with zero and can include hyphens) as the first argument 
and price as second argument, and should raise ArgumentError (one of Ruby's
built-in exception types) if the ISBN number is the empty string or if the price
is less than or equal to zero. Include the proper getters and setters for these
attributes. Run associated tests via: $ rspec -e 'constructor' spec/part3_spec.rb

Include a method price_as_string that returns the price of the book formatted
with a leading dollar sign and two decimal places, that is, a price of 20 should
format as "$20.00" and a price of 33.8 should format as "$33.80". Run associated
tests via: $ rspec -e '#price_as_string' spec/part3_spec.rb

=end
class BookInStock
  
  #attributes
  attr_reader :isbn, :price
  attr_writer :isbn, :price
  
  #constructor
  def self.initialize(isbn,price)
    if isbn[0] == 0 and isbn.contains("-")
      if price != 0 and price > 0
        @isbn = isbn
        @price = price
      end
    else
     return false
    end
  end
  
  def self.price_as_string(price) #ask
    round_price = price.round(2)
    print "$#{round_price}"
  end
  
end
