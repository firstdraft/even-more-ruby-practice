
describe "count_the.rb" do
  it "prints \"'the' appeared 5 times\" when the user enters 'the cabbage, the bagel, the apple, the drink, the bread'", points: 2 do
    # Un-require count_the.rb
    count_the = $".select{|r| r.include? 'count_the.rb'}
    $".delete(count_the.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("the cabbage, the bagel, the apple, the drink, the bread\n")

    expect { require_relative '../../count_the' }.to output(/.?the.? appeared 5 times/i).to_stdout
  end
end

describe "count_the.rb" do
  it "prints 'the' appeared 3 times' when the user enters 'the, beginnning the end and the middle'", points: 3 do
    # Un-require count_the.rb
    count_the = $".select{|r| r.include? 'count_the.rb'}
    $".delete(count_the.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("the, beginnning the end and the middle\n")

    expect { require_relative '../../count_the' }.to output(/.?the.? appeared 3 times/i).to_stdout
  end
end

describe "count_the.rb" do
  it "prints 'the' appeared 2 times' when the user enters 'the— then, the", points: 2 do
    # Un-require count_the.rb
    count_the = $".select{|r| r.include? 'count_the.rb'}
    $".delete(count_the.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("the— then, the\n")

    expect { require_relative '../../count_the' }.to output(/.?the.? appeared 2 times/i).to_stdout
  end
end

describe "secret_encoder.rb" do
  it "should print '3 n22d t4 b2 m4r2 s2cr2t', when the input is 'I need to be more secret'", points: 2 do
    allow_any_instance_of(Object).to receive(:gets).and_return("I need to be more secret\n")
    expect { require_relative '../../secret_encoder.rb' }.to output(/3 n22d t4 b2 m4r2 s2cr2t/).to_stdout
  end
end

describe "secret_encoder.rb" do
  it "should print 'D4n't t2ll 1ny4n2 45r c4d2' when the input is 'Don't tell anyone our code'", points: 3 do

 # Un-require secret_encoder.rb
    secret_encoder = $".select{|r| r.include? 'secret_encoder.rb'}
    $".delete(secret_encoder.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("Don't tell anyone our code\n")
    expect { require_relative '../../secret_encoder.rb' }.to output(/D4n't t2ll 1ny4n2 45r c4d2/).to_stdout
  end
end

describe "secret_decoder.rb" do
  it "prints 'I need to be more secret', when the input is '3 n22d t4 b2 m4r2 s2cr2t'", points: 2 do
    allow_any_instance_of(Object).to receive(:gets).and_return("3 n22d t4 b2 m4r2 s2cr2t\n")
    expect { require_relative '../../secret_decoder.rb' }.to output(/I need to be more secret/).to_stdout
  end
end

describe "secret_decoder.rb" do
  it "prints 'Don't tell anyone our code', when the input is 'D4n't t2ll 1ny4n2 45r c4d2'", points: 3 do

  # Un-require secret_decoder.rb
    secret_decoder = $".select{|r| r.include? 'secret_decoder.rb'}
    $".delete(secret_decoder.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("D4n't t2ll 1ny4n2 45r c4d2\n")
    expect { require_relative '../../secret_decoder.rb' }.to output(/Don't tell anyone our code/).to_stdout
  end
end

describe "two_fer.rb" do
  it "prints 'One for Alice, one for me!' if the user enters 'alice'", points: 1 do
    # Un-require two_fer.rb
    two_fer = $".select{|r| r.include? 'two_fer.rb'}
    $".delete(two_fer.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("alice\n")

    expect { require_relative '../../two_fer' }.to output(/One for Alice, one for me/).to_stdout
  end
end

describe "two_fer.rb" do
  it "prints 'One for Shreya, one for me!' if the user enters 'shreya'", points: 1 do
    # Un-require two_fer.rb
    two_fer = $".select{|r| r.include? 'two_fer.rb'}
    $".delete(two_fer.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("shreya\n")

    expect { require_relative '../../two_fer' }.to output(/One for Shreya, one for me/).to_stdout
  end
end

describe "two_fer.rb" do
  it "prints 'One for you, one for me!' if the user enters nothing", points: 2 do
    # Un-require two_fer.rb
    two_fer = $".select{|r| r.include? 'two_fer.rb'}
    $".delete(two_fer.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("\n")

    expect { require_relative '../../two_fer' }.to output(/One for you, one for me/).to_stdout
  end
end


describe "character_types.rb" do
  it "finds 8 letters, 3 spaces, and 4 digits when the user enters 'here 12 plus 25'", points: 2 do
    # Un-require character_types.rb
    character_types = $".select{|r| r.include? 'character_types.rb'}
    $".delete(character_types.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("here 12 plus 25\n")

    expect { require_relative '../../character_types' }.to output(/Number of letters in the string is: 8.?\n.?Number of spaces in the string is: 3.?\n.?Number of digits in the string is: 4/i).to_stdout
  end
end

describe "character_types.rb" do
  it "finds 4 letters, 5 spaces, and 7 digits when the user enters 'game 1 12 58 09 '", points: 2 do
    # Un-require character_types.rb
    character_types = $".select{|r| r.include? 'character_types.rb'}
    $".delete(character_types.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("game 1 12 58 09 \n")

    expect { require_relative '../../character_types' }.to output(/Number of letters in the string is: 4.?\n.?Number of spaces in the string is: 5.?\n.?Number of digits in the string is: 7/i).to_stdout
  end
end

describe "character_types.rb" do
  it "finds 0 letters, 0 spaces, and 0 digits when the user enters ''", points: 2 do
    # Un-require character_types.rb
    character_types = $".select{|r| r.include? 'character_types.rb'}
    $".delete(character_types.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("\n")

    expect { require_relative '../../character_types' }.to output(/Number of letters in the string is: 0.?\n.?Number of spaces in the string is: 0.?\n.?Number of digits in the string is: 0/i).to_stdout
  end
end


describe "dice_roll.rb" do
  it "prints 'You guessed correctly' when the user enters a correct guess", points: 1 do
    # Un-require dice_roll.rb
    dice_roll = $".select{|r| r.include? 'dice_roll.rb'}
    $".delete(dice_roll.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("4\n")
    allow_any_instance_of(Object).to receive(:rand).and_return(4)

    expect { require_relative '../../dice_roll' }.to output(/You guessed correctly/i).to_stdout
  end
end

describe "dice_roll.rb" do
  it "prints 'Shame on you' when the user enters an incorrect guess", points: 1 do
    # Un-require dice_roll.rb
    dice_roll = $".select{|r| r.include? 'dice_roll.rb'}
    $".delete(dice_roll.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("1\n")
    allow_any_instance_of(Kernel).to receive(:rand).and_return(5)

    expect { require_relative '../../dice_roll' }.to output(/Shame on you\. The die landed on 5/i).to_stdout
  end
end

describe "leap_year.rb" do
  it "prints '2016 is a leap year!' if the user enters '2016'", points: 1 do
    # Un-require leap_year.rb
    leap_year = $".select{|r| r.include? 'leap_year.rb'}
    $".delete(leap_year.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("2016\n")

    expect { require_relative '../../leap_year' }.to output(/2016 is a leap year/i).to_stdout
  end
end

describe "leap_year.rb" do
  it "prints '1804 is a leap year!' if the user enters '1804'", points: 1 do
    # Un-require leap_year.rb
    leap_year = $".select{|r| r.include? 'leap_year.rb'}
    $".delete(leap_year.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("1804\n")

    expect { require_relative '../../leap_year' }.to output(/1804 is a leap year/i).to_stdout
  end
end

describe "leap_year.rb" do
  it "prints '1800 is not a leap year.' if the user enters '1800'", points: 1 do
    # Un-require leap_year.rb
    leap_year = $".select{|r| r.include? 'leap_year.rb'}
    $".delete(leap_year.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("1800\n")

    expect { require_relative '../../leap_year' }.to output(/1800 is not a leap year/i).to_stdout
  end
end

describe "leap_year.rb" do
  it "prints '2200 is not a leap year.' if the user enters '2200'", points: 1 do
    # Un-require leap_year.rb
    leap_year = $".select{|r| r.include? 'leap_year.rb'}
    $".delete(leap_year.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("2200\n")

    expect { require_relative '../../leap_year' }.to output(/2200 is not a leap year/i).to_stdout
  end
end


describe "raindrops.rb" do
  it "should print '52' when the input is '52'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'raindrops.rb'}
    $".delete(raindrops.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("52\n")
    
    expect{ require_relative "../../raindrops.rb" }.to output(/52/).to_stdout
  end
end

describe "raindrops.rb" do
  it "should print 'PlingPlangPlong' when the input is '105'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'raindrops.rb'}
    $".delete(raindrops.first)
    allow_any_instance_of(Object).to receive(:gets).and_return("105\n")
    
    expect{ require_relative "../../raindrops.rb" }.to output(/PlingPlangPlong/).to_stdout
  end
end

describe "raindrops.rb" do
  it "should print 'Plang' when the input is '3125'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'raindrops.rb'}
    $".delete(raindrops.first)
    allow_any_instance_of(Object).to receive(:gets).and_return("3125\n")
    
    expect{ require_relative "../../raindrops.rb" }.to output(/Plang/).to_stdout
  end
end

describe "raindrops.rb" do
  it "should print 'Plong' when the input is '49'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'raindrops.rb'}
    $".delete(raindrops.first)
    allow_any_instance_of(Object).to receive(:gets).and_return("49\n")
    
    expect{ require_relative "../../raindrops.rb" }.to output(/Plong/).to_stdout
  end
end

describe "raindrops.rb" do
  it "should print 'PlangPlong' when the input is '35'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'raindrops.rb'}
    $".delete(raindrops.first)
    allow_any_instance_of(Object).to receive(:gets).and_return("35\n")
    
    expect{ require_relative "../../raindrops.rb" }.to output(/PlangPlong/).to_stdout
  end
end

describe "raindrops.rb" do
  it "should print 'Plang' when the input is '25'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'raindrops.rb'}
    $".delete(raindrops.first)
    allow_any_instance_of(Object).to receive(:gets).and_return("25\n")
    
    expect{ require_relative "../../raindrops.rb" }.to output(/Plang/).to_stdout
  end
end

describe "raindrops.rb" do
  it "should print 'PlingPlong' when the input is '21'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'raindrops.rb'}
    $".delete(raindrops.first)
    allow_any_instance_of(Object).to receive(:gets).and_return("21\n")
    
    expect{ require_relative "../../raindrops.rb" }.to output(/PlingPlong/).to_stdout
  end
end

describe "raindrops.rb" do
  it "should print 'PlingPlang' when the input is '15'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'raindrops.rb'}
    $".delete(raindrops.first)
    allow_any_instance_of(Object).to receive(:gets).and_return("15\n")
    
    expect{ require_relative "../../raindrops.rb" }.to output(/PlingPlang/).to_stdout
  end
end


describe "think_fast.rb" do
  it "prints '5 is odd' when when the random number is '5'", points: 1 do
    # Un-require think_fast.rb
    think_fast = $".select{|r| r.include? 'think_fast.rb'}
    $".delete(think_fast.first)

    allow_any_instance_of(Kernel).to receive(:rand).and_return(5)
    allow_any_instance_of(Array).to receive(:sample).and_return(5)

    expect { require_relative '../../think_fast' }.to output(/5 is odd/i).to_stdout
  end
end

describe "think_fast.rb" do
  it "prints '40 is even' when the random number is '40'", points: 1 do
    # Un-require think_fast.rb
    think_fast = $".select{|r| r.include? 'think_fast.rb'}
    $".delete(think_fast.first)

    allow_any_instance_of(Kernel).to receive(:rand).and_return(40)
    allow_any_instance_of(Array).to receive(:sample).and_return(40)

    expect { require_relative '../../think_fast' }.to output(/40 is even/i).to_stdout
  end
end

describe "think_fast.rb" do
  it "prints 'you may pass' when `some_random_input` is 'true'", points: 1 do
    # Un-require think_fast.rb
    think_fast = $".select{|r| r.include? 'think_fast.rb'}
    $".delete(think_fast.first)

    allow_any_instance_of(Array).to receive(:sample).and_return(true)

    expect { require_relative '../../think_fast' }.to output(/you may pass/i).to_stdout
  end
end

describe "think_fast.rb" do
  it "prints 'you may not pass' when `some_random_input` is 'false'", points: 1 do
    # Un-require think_fast.rb
    think_fast = $".select{|r| r.include? 'think_fast.rb'}
    $".delete(think_fast.first)

    allow_any_instance_of(Array).to receive(:sample).and_return(false)

    expect { require_relative '../../think_fast' }.to output(/you may not pass/i).to_stdout
  end
end

describe "think_fast.rb" do
  it "prints '[:city, :state, :zip]' when `some_random_input` is a Hash", points: 1 do
    # Un-require think_fast.rb
    think_fast = $".select{|r| r.include? 'think_fast.rb'}
    $".delete(think_fast.first)

    allow_any_instance_of(Array).to receive(:sample).and_return({ :city => "Chicago", :state => "IL", :zip => 60654 })

    expect { require_relative '../../think_fast' }.to output(/\[:city, :state, :zip\]/i).to_stdout
  end
end

describe "think_fast.rb" do
  it "prints 'hello!' when `some_random_input` is a 'Hello!", points: 1 do
    # Un-require think_fast.rb
    think_fast = $".select{|r| r.include? 'think_fast.rb'}
    $".delete(think_fast.first)

    allow_any_instance_of(Array).to receive(:sample).and_return("Hello!")

    expect { require_relative '../../think_fast' }.to output(/hello!/).to_stdout
  end
end

describe "think_fast.rb" do
  it "prints ':goodbye' when `some_random_input` is a ':GOODBYE", points: 1 do
    # Un-require think_fast.rb
    think_fast = $".select{|r| r.include? 'think_fast.rb'}
    $".delete(think_fast.first)

    allow_any_instance_of(Array).to receive(:sample).and_return(:GOODBYE)

    expect { require_relative '../../think_fast' }.to output(/:goodbye/).to_stdout
  end
end

describe "think_fast.rb" do
  it "prints 'monday' when `some_random_input` is a Time and the current day is a Monday", points: 1 do
    # Un-require think_fast.rb
    think_fast = $".select{|r| r.include? 'think_fast.rb'}
    $".delete(think_fast.first)

    # allow(Time).to receive(:now).and_return(Time.at(1594669445))
    allow_any_instance_of(Array).to receive(:sample).and_return(Time.at(1594669445))
    
    expect { require_relative '../../think_fast' }.to output(/monday/).to_stdout
  end
end

describe "accumulate.rb" do
  it "prints 'Are we there yet?' 5 times when the user enters 'yes' after 4 other tries'", points: 1 do
    # Un-require accumulate.rb
    accumulate = $".select{|r| r.include? 'accumulate.rb'}
    $".delete(accumulate.first)

    allow_any_instance_of(Kernel).to receive(:gets) do
      @counter ||= 0
      response = if @counter > 3 # an arbitrary threshold
                   "yes"
                 else
                   "no"
                 end
      @counter += 1
      response
    end

    expect { require_relative '../../accumulate' }.to output(/(.?Are we there yet\?.?\n){5}/i).to_stdout
  end
end

describe "accumulate.rb" do
  it "prints an Array of the words the user entered, '\[\"no\", \"no\", \"no\", \"no\", \"yes\"\]'", points: 1 do
    # Un-require accumulate.rb
    accumulate = $".select{|r| r.include? 'accumulate.rb'}
    $".delete(accumulate.first)

    allow_any_instance_of(Kernel).to receive(:gets) do
      @counter ||= 0
      response = if @counter > 3 # an arbitrary threshold
                   "yes"
                 else
                   "no"
                 end
      @counter += 1
      response
    end

    expect { require_relative '../../accumulate' }.to output(/\["no", "no", "no", "no", "yes"\]/).to_stdout
  end
end


describe "accumulate.rb" do
  it "prints an Array of the words the user entered, '\[\"no\", \"no\", \"123\", \"yeah\", \"yes\"\]'", points: 1 do
    # Un-require accumulate.rb
    accumulate = $".select{|r| r.include? 'accumulate.rb'}
    $".delete(accumulate.first)

    allow_any_instance_of(Kernel).to receive(:gets) do
      @counter ||= 0
      response = if @counter > 3 # an arbitrary threshold
                   "yes"
                elsif @counter == 0
                  "no"
                elsif @counter == 1
                  "NO"
                elsif @counter == 2
                  "123"
                elsif @counter == 3
                  "YEAH"
                 end
      @counter += 1
      response
    end

    expect { require_relative '../../accumulate' }.to output(/\["no", "no", "123", "yeah", "yes"\]/).to_stdout
  end
end



describe "isogram.rb" do
  it "String#isogram?('angola') should return false", points: 0 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'isogram.rb'}
    $".delete(raindrops.first)
    # allow_any_instance_of(Object).to receive(:gets).and_return("angola\n")
    
    require_relative "../../isogram.rb"
    
    expect(String.isogram?("angola")).to be(false)
    
  end
end

describe "isogram.rb" do
  it "should print 'false' when the input is 'accentor'", points: 0 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'isogram.rb'}
    $".delete(raindrops.first)
    require_relative "../../isogram.rb"
    
    expect(String.isogram?("accentor")).to be(false)
    
  end
end

describe "isogram.rb" do
  it "should print 'true' when the input is 'Emily Jung Schwartzkopf'", points: 0 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'isogram.rb'}
    $".delete(raindrops.first)
    require_relative "../../isogram.rb"
    
    expect(String.isogram?("Emily Jung Schwartzkopf")).to be(true)
    
  end
end

describe "isogram.rb" do
  it "should print 'true' when the input is 'six-year-old'", points: 0 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'isogram.rb'}
    $".delete(raindrops.first)
    require_relative "../../isogram.rb"
    
    expect(String.isogram?("six-year-old")).to be(true)
    
  end
end

describe "isogram.rb" do
  it "should print 'false' when the input is 'thumbscrew-jappingly'", points: 0 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'isogram.rb'}
    $".delete(raindrops.first)

    require_relative "../../isogram.rb"
    
    expect(String.isogram?("thumbscrew-jappingly")).to be(false)
    
  end
end

describe "isogram.rb" do
  it "should print 'true' when the input is 'thumbscrew-japingly'", points: 0 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'isogram.rb'}
    $".delete(raindrops.first)
    require_relative "../../isogram.rb"
    
    expect(String.isogram?("thumbscrew-japingly")).to be(true)
    
  end
end

describe "isogram.rb" do
  it "should print 'false' when the input is 'alphAbet'", points: 0 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'isogram.rb'}
    $".delete(raindrops.first)
    require_relative "../../isogram.rb"
    
    expect(String.isogram?("alphAbet")).to be(false)
    
  end
end

describe "isogram.rb" do
  it "should print 'false' when the input is 'eleven'", points: 0 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'isogram.rb'}
    $".delete(raindrops.first)
    require_relative "../../isogram.rb"
    
    expect(String.isogram?("eleven")).to be(false)
    
  end
end

describe "isogram.rb" do
  it "should print 'true' when the input is 'isogram'", points: 0 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'isogram.rb'}
    $".delete(raindrops.first)
    require_relative "../../isogram.rb"
    
    expect(String.isogram?("isogram")).to be(true)
  end
end

describe "isogram.rb" do
  it "should print 'true' when the input is ''", points: 0 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? 'isogram.rb'}
    $".delete(raindrops.first)
    require_relative "../../isogram.rb"
    
    expect(String.isogram?("")).to be(true)
  end
end


describe "hamming.rb" do
  it "the distance_between 'GGACGGATTCTG' and 'AGGACGGATTCT' should return 9", points: 0 do
    require_relative "../../hamming.rb"
    dna = Dna.new
    dna.strand = "GGACGGATTCTG"
    other_dna = Dna.new
    other_dna.strand = "AGGACGGATTCT"
    expect(dna.distance_between(other_dna)).to eq(9)
  end
end

describe "hamming.rb" do
  it "the distance_between 'GGACTGAAATCTG' and 'GGACTGAAATCTG' should return 0", points: 0 do
    require_relative "../../hamming.rb"
    dna = Dna.new
    dna.strand = "GGACTGAAATCTG"
    other_dna = Dna.new
    other_dna.strand = "GGACTGAAATCTG"
    expect(dna.distance_between(other_dna)).to eq(0)
  end
end

describe "hamming.rb" do
  it "the distance_between 'G' and 'T' should return 1", points: 0 do
    require_relative "../../hamming.rb"
    dna = Dna.new
    dna.strand = "G"
    other_dna = Dna.new
    other_dna.strand = "T"
    expect(dna.distance_between(other_dna)).to eq(1)
  end
end

describe "hamming.rb" do
  it "the distance_between '' and '' should return 0", points: 0 do
    require_relative "../../hamming.rb"
    dna = Dna.new
    dna.strand = ""
    other_dna = Dna.new
    other_dna.strand = ""
    expect(dna.distance_between(other_dna)).to eq(0)
  end
end

describe "darts.rb" do
  it "prints '1 points' when the user enters '0,10", points: 0 do
    # Un-require darts.rb
    darts = $".select{|r| r.include? 'darts.rb'}
    $".delete(darts.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("0,10\n")

    expect { require_relative '../../darts' }.to output(/1 points/i).to_stdout
  end
end

describe "darts.rb" do
  it "prints '0 points' when the user enters '-9,9", points: 0 do
    # Un-require darts.rb
    darts = $".select{|r| r.include? 'darts.rb'}
    $".delete(darts.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("-9,9\n")

    expect { require_relative '../../darts' }.to output(/0 points/i).to_stdout
  end
end

describe "darts.rb" do
  it "prints '5 points' when the user enters '-5,0", points: 0 do
    # Un-require darts.rb
    darts = $".select{|r| r.include? 'darts.rb'}
    $".delete(darts.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("-5,0\n")

    expect { require_relative '../../darts' }.to output(/5 points/i).to_stdout
  end
end

describe "darts.rb" do
  it "prints '5 points' when the user enters '0.8,-0.8", points: 0 do
    # Un-require darts.rb
    darts = $".select{|r| r.include? 'darts.rb'}
    $".delete(darts.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("0.8,-0.8\n")

    expect { require_relative '../../darts' }.to output(/5 points/i).to_stdout
  end
end

describe "darts.rb" do
  it "prints '10 points' when the user enters '0,-1", points: 0 do
    # Un-require darts.rb
    darts = $".select{|r| r.include? 'darts.rb'}
    $".delete(darts.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("0,-1\n")

    expect { require_relative '../../darts' }.to output(/10 points/i).to_stdout
  end
end

describe "darts.rb" do
  it "prints '10 points' when the user enters '0,0", points: 0 do
    # Un-require darts.rb
    darts = $".select{|r| r.include? 'darts.rb'}
    $".delete(darts.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("0,0\n")

    expect { require_relative '../../darts' }.to output(/10 points/i).to_stdout
  end
end


describe "phrase.rb" do
  it "has a class called 'Phrase'", points: 0 do
    require_relative "../../phrase.rb"
    expect{ Phrase }.to_not raise_error(NameError),
      "Expected phrase.rb to define a class called 'Phrase', but didn't."
  end
end

describe "phrase.rb" do
  it "Phrase class has an attribute called 'body'", points: 0 do
    require_relative "../../phrase.rb"
    expect(Phrase.method_defined?(:body)).to eq(true),
      "Expected 'Phrase' class to have an attr_accessor called 'body', but didn't"
    end
  end
  
  describe "phrase.rb" do
    it "has an instance method called, 'abbreviate', that returns the abbreviation of the Phrase's body", points: 0 do
      require_relative "../../phrase.rb"
      expect(Phrase.method_defined?(:abbreviate)).to eq(true),
        "Expected 'Phrase' class to have an instance method called 'abbreviate', but didn't"
  end
end

describe "phrase.rb" do
  it "returns 'SIMUFTA' when Phrase body is 'Something - I made up from thin air'", points: 0 do
    require_relative "../../phrase.rb"
    phrase = Phrase.new
    phrase.body = "Something - I made up from thin air"
    expect(phrase.abbreviate).to eq("SIMUFTA")
  end
end

describe "phrase.rb" do
  it "returns 'ROTFLSHTMDCOALM' when Phrase body is 'Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me'", points: 0 do
    require_relative "../../phrase.rb"
    phrase = Phrase.new
    phrase.body = "Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me"
    expect(phrase.abbreviate).to eq("ROTFLSHTMDCOALM")
  end
end

describe "phrase.rb" do
  it "returns 'CMOS' when Phrase body is 'Complementary metal-oxide semiconductor'", points: 0 do
    require_relative "../../phrase.rb"
    phrase = Phrase.new
    phrase.body = "Complementary metal-oxide semiconductor"
    expect(phrase.abbreviate).to eq("CMOS")
  end
end

describe "phrase.rb" do
  it "returns 'GIMP' when Phrase body is 'GNU Image Manipulation Program'", points: 0 do
    require_relative "../../phrase.rb"
    phrase = Phrase.new
    phrase.body = "GNU Image Manipulation Program"
    expect(phrase.abbreviate).to eq("GIMP")
  end
end

describe "phrase.rb" do
  it "returns 'FIFO' when Phrase body is 'First In, First Out'", points: 0 do
    require_relative "../../phrase.rb"
    phrase = Phrase.new
    phrase.body = "First In, First Out"
    expect(phrase.abbreviate).to eq("FIFO")
  end
end

describe "phrase.rb" do
  it "returns 'ROR' when Phrase body is 'Ruby on Rails'", points: 0 do
    require_relative "../../phrase.rb"
    phrase = Phrase.new
    phrase.body = "Ruby on Rails"
    expect(phrase.abbreviate).to eq("ROR")
  end
end

describe "phrase.rb" do
  it "returns 'PNG' when Phrase body is 'Portable Network Graphics'", points: 0 do
    require_relative "../../phrase.rb"
    phrase = Phrase.new
    phrase.body = "Portable Network Graphics"
    expect(phrase.abbreviate).to eq("PNG")
  end
end
