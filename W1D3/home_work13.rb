#Write a function sum_to(n) that uses recursion to calculate
#the sum from 1 to n (inclusive of n).

def sum_to(num)
  if num == 0
    return num
  elsif num < -1
    return nil
  end
  num + sum_to(num - 1)
end
# Test Cases
puts 'hello'
puts sum_to(5)  # => returns 15
puts sum_to(1)  # => returns 1
puts sum_to(9)  # => returns 45
puts sum_to(-8) # => returns nil


#Write a function add_numbers(nums_array) that takes in an array
#of Fixnums and returns the sum of those numbers.
#Write this method recursively.

def add_numbers(arr)
  if arr == []
    return nil
  elsif arr[0] == arr[-1]
    return arr[0]
  end
  arr[-1] + add_numbers(arr[0...-1])
end

# Test Cases
add_numbers([1,2,3,4]) # => returns 10
add_numbers([3]) # => returns 3
add_numbers([-80,34,7]) # => returns -39
add_numbers([]) # => returns nil


  #Let's write a method that will solve Gamma Function recursively.
  #The Gamma Function is defined Γ(n) = (n-1)!

def gamma_fnc(num)
  return nil if num < 1
  return 1 if num == 1

  (num - 1) * gamma_fnc(num - 1)
end
  # Test Cases
gamma_fnc(0)  # => returns nil
gamma_fnc(1)  # => returns 1
gamma_fnc(4)  # => returns 6
gamma_fnc(8)  # => returns 5040

#Write a function ice_cream_shop(flavors, favorite) that takes in an
#array of ice cream flavors available at the ice cream shop, as well
#as the user's favorite ice cream flavor. Recursively find out whether
#or not the shop offers their favorite flavor.

def ice_cream_shop(flavors, favorite)
  return true if flavors[-1] == favorite
  return false if flavors.empty?

  ice_cream_shop(flavors[0...-1], favorite)
end

# Test Cases
ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
ice_cream_shop([], 'honey lavender')  # => returns false



#Write a function reverse(string) that takes in a
#string and returns it reversed.

def reverse(str)
  return "" if str.empty?

  reverse(str[1..-1]) + str[0]
end
# Test Cases
  reverse("house") # => "esuoh"
  reverse("dog") # => "god"
  reverse("atom") # => "mota"
  reverse("q") # => "q"
  reverse("id") # => "di"
  reverse("") # => ""
