#Create an encoder that will allow you to enter a string and replace the vowels. Here is our secret code, don't tell anyone... a = 1, e = 2, i = 3, o = 4, u = 5

puts "Enter in the secret you want to encode"
my_code = gets.chomp 
new_code = my_code.downcase.gsub("a","1").gsub("e","2").gsub("i","3").gsub("o","4").gsub("u","5")

puts new_code.capitalize