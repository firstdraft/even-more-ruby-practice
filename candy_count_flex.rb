#The following is an array of each color of skittles in a single bag.  It is your job to enter a color, and for it to return to you the number count of that color.  It should be in a sentence. 

#Example "There are 4 orange"

candy_array = ["PUrple", "reD", "Red", "PUrple", "red", "GreEn", "Red", "PUrple", "Red", "Orange", "PUrple", "Green", "Red", "PUrple", "Red", "Green", "PUrple", "PUrple", "Red", "PUrple", "Red", "Red", "Red", "Yellow", "PUrple", "PUrple", "OrAnge", "PUrple", "Red", "Red", "PUrPle", "Green", "Green", "Red", "Red", "Orange", "OraNge", "PUrple", "PUrple", "Green", "Yellow", "Purple", "purple", "Red", "Orange", "Purple", "Green", "Red", "Red", "Green", "Yellow", "Red", "Red", "Green", "Red", "Green", "Yellow", "Orange", "Red", "Green", "Yellow", "Yellow", "Green", "OraNge", "Red", "Purple", "Green", "Red", "Red", "Purple", "Purple", "red", "Purple", "YelLow", "Green", "Purple", "YEllow", "orange", "Orange", "Green", "red", "red", "Green", "OrAnge", "Purple", "red", "red", "Red", "Yellow", "REd", "Purple", "Red", "Yellow", "Green", "Red", "Purple", "Yellow", "Red", "Purple", "green", "Purple", "Purple", "green", "Red"]

input = gets.chomp.downcase

candy_count = 0

candy_array.each do |color|
  color = color.downcase
  if color == input
    candy_count = candy_count + 1
  end
end

puts "There are #{candy_count} #{input}"