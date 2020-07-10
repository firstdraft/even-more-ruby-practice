# Raindrops
# Convert a number to a string, the contents of which depend on the number's factors.

# If the number has 3 as a factor, output 'Pling'.
# If the number has 5 as a factor, output 'Plang'.
# If the number has 7 as a factor, output 'Plong'.
# If the number does not have 3, 5, or 7 as a factor, just pass the number's digits straight through.

# Examples
# 28's factors are 1, 2, 4, 7, 14, 28.
# In raindrop-speak, this would be a simple "Plong".
# 30's factors are 1, 2, 3, 5, 6, 10, 15, 30.
# In raindrop-speak, this would be a "PlingPlang".
# 34 has four factors: 1, 2, 17, and 34.
# In raindrop-speak, this would be "34".

# Your Job
# Define a class called Raindrops with a class method called convert that accepts one Integer argument, and returns a String.

# Examples

# Raindrops.convert(1) # => "1"
# Raindrops.convert(5) # => "Plang"
# Raindrops.convert(21) # => "PlingPlong"

p "Enter an integer"

num = gets.chomp.to_i

output = ""
if num % 3 == 0
  output = output + "Pling"
end
if num % 5 == 0
  output = output + "Plang"
end
if num % 7 == 0
  output = output + "Plong"
end
if output == ""
  output = num
end

p output
