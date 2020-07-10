 
# Most commonly, we define classes to represent things; those things have attributes; and we define instance methods to operate on those attributes and return useful values.

# Acronym
# Convert a phrase to its acronym.

# Techies love their TLA (Three Letter Acronyms)!

# Help generate some jargon by writing a program that converts a long name like Portable Network Graphics to its acronym (PNG).
 
# Your Job
# Define a class called Acronym with:

# An attribute accessor called phrase which will store a String.
# An instance method called abbreviate that will return a String: the first letter of each word in the phrase.

# Examples

# a = Acronym.new
# a.phrase = "Portable Network Graphics"
# a.abbreviate # => "PNG"


# b = Acronym.new
# b.phrase = "Complementary metal-oxide semiconductor"
# b.abbreviate # => "CMOS"


# Try to figure out a solution using methods introduced in the Ruby readings — writing software is about inventing solutions to new problems using the tools at hand.

# Put on your inventor's cap and try to figure out how to assemble solutions to these puzzles using the methods you've met in the Ruby readings so far. There's at least one way, and usually multiple.

# But you should most definitely ask us questions about the methods and classes in the Ruby readings, and how they work.

class Phrase
  attr_accessor :body

  def abbreviate
    phrase_without_hyphens = self.body.gsub("-", " ")
    words_array = phrase_without_hyphens.split
    
    acronym = ""
    
    words_array.each do |word|
      character_array = word.split("")
      first_character = character_array.at(0)
      capitalized_character = first_character.capitalize
      acronym = acronym + capitalized_character
    end
    
    return acronym
  end
end

nm = Phrase.new
nm.body = "Complementary metal-oxide semiconductor"
p nm.abbreviate
