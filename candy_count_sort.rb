#The following is an array of each color of skittles in a single bag.  It is your job to return in a sentace the number of each of color. The order of the colors matter in the output.  

#Example "12 yellow, 33 red, 22 purple, 5 green and 1 orange."

candy_array = ["PUrple", "reD", "Red", "PUrple", "red", "GreEn", "Red", "PUrple", "Red", "Orange", "PUrple", "Green", "Red", "PUrple", "Red", "Green", "PUrple", "PUrple", "Red", "PUrple", "Red", "Red", "Red", "Yellow", "PUrple", "PUrple", "OrAnge", "PUrple", "Red", "Red", "PUrPle", "Green", "Green", "Red", "Red", "Orange", "OraNge", "PUrple", "PUrple", "Green", "Yellow", "Purple", "purple", "Red", "Orange", "Purple", "Green", "Red", "Red", "Green", "Yellow", "Red", "Red", "Green", "Red", "Green", "Yellow", "Orange", "Red", "Green", "Yellow", "Yellow", "Green", "OraNge", "Red", "Purple", "Green", "Red", "Red", "Purple", "Purple", "red", "Purple", "YelLow", "Green", "Purple", "YEllow", "orange", "Orange", "Green", "red", "red", "Green", "OrAnge", "Purple", "red", "red", "Red", "Yellow", "REd", "Purple", "Red", "Yellow", "Green", "Red", "Purple", "Yellow", "Red", "Purple", "green", "Purple", "Purple", "green", "Red"]

candy_hash = {:red => 0, :yellow => 0, :purple => 0, :green => 0, :orange => 0}

candy_array.each do |color|

  color = color.downcase
  
  if color == "red"
   
     count = candy_hash.fetch(:red) + 1
    candy_hash.store(:red, count)

  elsif color == "green"
     count = candy_hash.fetch(:green) + 1
    candy_hash.store(:green, count)

  elsif color == "orange"
     count = candy_hash.fetch(:orange) + 1
    candy_hash.store(:orange, count)

  elsif color == "yellow"
     count = candy_hash.fetch(:yellow) + 1
    candy_hash.store(:yellow, count)

  elsif color == "purple"
     count = candy_hash.fetch(:purple) + 1
    candy_hash.store(:purple, count)

  end
end



p "#{candy_hash.fetch(:yellow)} yellow, #{candy_hash.fetch(:red)} red, #{candy_hash.fetch(:purple)} purple, #{candy_hash.fetch(:green)} green and #{candy_hash.fetch(:yellow)} orange."
