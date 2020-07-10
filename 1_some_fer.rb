# Sometimes, we want to define a method at the class-level rather than at the instance-level.

# For example, Ruby's standard class Date has the Date.today method at the class-level which returns an instance initialized to today's date.

# Notice that we call .today directly on the class Date itself; we don't first do Date.new and then call .today on the new instance, like we would if .today were an instance method.

# https://chapters.firstdraft.com/chapters/769#defining-class-methods

# For our purposes, we'll mostly be using class-level methods when we get to working with database tables. We're not quite there yet, but we need to get comfortable with the difference between class-level methods and instance-level methods.

# (When we get there, the class itself (e.g. Movie) will represent the entire table, and instances of the class (e.g. Movie.new) will represent one record in the table. We'll use class-level methods to query the table for multiple records, and instance-level methods to work with individual records.)

# SomeFer
# Define a silly class called SomeFer with a silly class method called name_and_num that accepts two String arguments, and returns a String.

# The first argument will contain a name (e.g. "Alice") and the second argument will contain a number (e.g. "four"), and the return value should be a string like this: "Four for Alice, four for me."

# Examples:

# SomeFer.name_and_num("Alice", "four") # => "Four for Alice, four for me."
# SomeFer.name_and_num("Bob", "two") # => "Two for Bob, two for me."
