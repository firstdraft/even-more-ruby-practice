# We have a way to encode our messages, now can you write a way to decode them? 

puts "Enter in the secret you want to decode"
message = gets.chomp 
#message = "3 n22d t4 b2 m4r2 s2cr2t"
decode = message.downcase.gsub("1","a").gsub("2","e").gsub("3","i").gsub("4","o").gsub("5","u")

puts decode

cap_string = decode.capitalize



puts cap_string