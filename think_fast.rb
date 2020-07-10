
unpredictable_inputs = [
  "Hello!",
  Time.now,
  rand(100),
  :GOODBYE,
  nil,
  true,
  false,
  { :city => "Chicago", :state => "IL", :zip => 60654 }
].shuffle

some_random_input = unpredictable_inputs.at(3)

p some_random_input

# Your code goes below


