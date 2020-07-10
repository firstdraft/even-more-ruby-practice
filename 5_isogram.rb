# Isogram
# Determine if a word or phrase is an isogram.

# An isogram (also known as a "nonpattern word") is a word or phrase without a repeating letter, however spaces and hyphens are allowed to appear multiple times.

# Examples of isograms:

# lumberjacks
# background
# downstream
# six-year-old

# The word isograms, however, is not an isogram, because the s repeats.

# Your Job
# Define a class called Isogram with a class method called isogram? that accepts one String argument, and returns true or false.

# Example

# Isogram.isogram?("eleven") # => false
# Isogram.isogram?("subdermatoglyphic") # => true

class String
  def String.isogram?(word)
    letters = word.split("")
    letters.each do |letter|
      if letters.count(letter) > 1
        return false
      end
    end
    return true
  end
end

p String.isogram?("vera")
