describe "1_two_fer.rb" do
  it "prints 'One for Alice, two for me!' if the user enters 'alice'", points: 1 do
    # Un-require two_fer.rb
    two_fer = $".select{|r| r.include? '1_two_fer.rb'}
    $".delete(two_fer.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("alice\n")

    expect { require_relative '../../1_two_fer' }.to output(/One for Alice, two for me/).to_stdout
  end
end

describe "1_two_fer.rb" do
  it "prints 'One for Shreya, two for me!' if the user enters 'shreya'", points: 1 do
    # Un-require two_fer.rb
    two_fer = $".select{|r| r.include? '1_two_fer.rb'}
    $".delete(two_fer.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("shreya\n")

    expect { require_relative '../../1_two_fer' }.to output(/One for Shreya, two for me/).to_stdout
  end
end

describe "2_phrase.rb" do
  it "has a class called 'Phrase'", points: 0 do
    require_relative "../../2_phrase.rb"
    expect{ Phrase }.to_not raise_error(NameError),
      "Expected 2_phrase.rb to define a class called 'Phrase', but didn't."
  end
end

describe "2_phrase.rb" do
  it "Phrase class has an attribute called 'body'", points: 0 do
    require_relative "../../2_phrase.rb"
    expect(Phrase.method_defined?(:body)).to eq(true),
      "Expected 'Phrase' class to have an attr_accessor called 'body', but didn't"
    end
  end
  
  describe "2_phrase.rb" do
    it "has an instance method called, 'abbreviate', that returns the abbreviation of the Phrase's body", points: 0 do
      require_relative "../../2_phrase.rb"
      expect(Phrase.method_defined?(:abbreviate)).to eq(true),
        "Expected 'Phrase' class to have an instance method called 'abbreviate', but didn't"
  end
end

describe "2_phrase.rb" do
  it "returns 'SIMUFTA' when Phrase body is 'Something - I made up from thin air'", points: 1 do
    require_relative "../../2_phrase.rb"
    phrase = Phrase.new
    phrase.body = "Something - I made up from thin air"
    expect(phrase.abbreviate).to eq("SIMUFTA")
  end
end

describe "2_phrase.rb" do
  it "returns 'ROTFLSHTMDCOALM' when Phrase body is 'Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me'", points: 1 do
    require_relative "../../2_phrase.rb"
    phrase = Phrase.new
    phrase.body = "Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me"
    expect(phrase.abbreviate).to eq("ROTFLSHTMDCOALM")
  end
end

describe "2_phrase.rb" do
  it "returns 'CMOS' when Phrase body is 'Complementary metal-oxide semiconductor'", points: 1 do
    require_relative "../../2_phrase.rb"
    phrase = Phrase.new
    phrase.body = "Complementary metal-oxide semiconductor"
    expect(phrase.abbreviate).to eq("CMOS")
  end
end

describe "2_phrase.rb" do
  it "returns 'GIMP' when Phrase body is 'GNU Image Manipulation Program'", points: 1 do
    require_relative "../../2_phrase.rb"
    phrase = Phrase.new
    phrase.body = "GNU Image Manipulation Program"
    expect(phrase.abbreviate).to eq("GIMP")
  end
end

describe "2_phrase.rb" do
  it "returns 'FIFO' when Phrase body is 'First In, First Out'", points: 1 do
    require_relative "../../2_phrase.rb"
    phrase = Phrase.new
    phrase.body = "First In, First Out"
    expect(phrase.abbreviate).to eq("FIFO")
  end
end

describe "2_phrase.rb" do
  it "returns 'ROR' when Phrase body is 'Ruby on Rails'", points: 1 do
    require_relative "../../2_phrase.rb"
    phrase = Phrase.new
    phrase.body = "Ruby on Rails"
    expect(phrase.abbreviate).to eq("ROR")
  end
end

describe "2_phrase.rb" do
  it "returns 'PNG' when Phrase body is 'Portable Network Graphics'", points: 1 do
    require_relative "../../2_phrase.rb"
    phrase = Phrase.new
    phrase.body = "Portable Network Graphics"
    expect(phrase.abbreviate).to eq("PNG")
  end
end

describe "3_hamming.rb" do
  it "the distance_between 'GGACGGATTCTG' and 'AGGACGGATTCT' should return 9", points: 1 do
    require_relative "../../3_hamming.rb"
    dna = Dna.new
    dna.strand = "GGACGGATTCTG"
    other_dna = Dna.new
    other_dna.strand = "AGGACGGATTCT"
    expect(dna.distance_between(other_dna)).to eq(9)
  end
end

describe "3_hamming.rb" do
  it "the distance_between 'GGACTGAAATCTG' and 'GGACTGAAATCTG' should return 0", points: 1 do
    require_relative "../../3_hamming.rb"
    dna = Dna.new
    dna.strand = "GGACTGAAATCTG"
    other_dna = Dna.new
    other_dna.strand = "GGACTGAAATCTG"
    expect(dna.distance_between(other_dna)).to eq(0)
  end
end

describe "3_hamming.rb" do
  it "the distance_between 'G' and 'T' should return 1", points: 1 do
    require_relative "../../3_hamming.rb"
    dna = Dna.new
    dna.strand = "G"
    other_dna = Dna.new
    other_dna.strand = "T"
    expect(dna.distance_between(other_dna)).to eq(1)
  end
end

describe "3_hamming.rb" do
  it "the distance_between '' and '' should return 0", points: 1 do
    require_relative "../../3_hamming.rb"
    dna = Dna.new
    dna.strand = ""
    other_dna = Dna.new
    other_dna.strand = ""
    expect(dna.distance_between(other_dna)).to eq(0)
  end
end

describe "4_raindrops.rb" do
  it "should print '52' when the input is '52'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? '4_raindrops.rb'}
    $".delete(raindrops.first)
    
    allow_any_instance_of(Object).to receive(:gets).and_return("52\n")
    
    expect{ require_relative "../../4_raindrops.rb" }.to output(/52/).to_stdout
  end
end

describe "4_raindrops.rb" do
  it "should print 'PlingPlangPlong' when the input is '105'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? '4_raindrops.rb'}
    $".delete(raindrops.first)
    allow_any_instance_of(Object).to receive(:gets).and_return("105\n")
    
    expect{ require_relative "../../4_raindrops.rb" }.to output(/PlingPlangPlong/).to_stdout
  end
end

describe "4_raindrops.rb" do
  it "should print 'Plang' when the input is '3125'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? '4_raindrops.rb'}
    $".delete(raindrops.first)
    allow_any_instance_of(Object).to receive(:gets).and_return("3125\n")
    
    expect{ require_relative "../../4_raindrops.rb" }.to output(/Plang/).to_stdout
  end
end

describe "4_raindrops.rb" do
  it "should print 'Plong' when the input is '49'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? '4_raindrops.rb'}
    $".delete(raindrops.first)
    allow_any_instance_of(Object).to receive(:gets).and_return("49\n")
    
    expect{ require_relative "../../4_raindrops.rb" }.to output(/Plong/).to_stdout
  end
end

describe "4_raindrops.rb" do
  it "should print 'PlangPlong' when the input is '35'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? '4_raindrops.rb'}
    $".delete(raindrops.first)
    allow_any_instance_of(Object).to receive(:gets).and_return("35\n")
    
    expect{ require_relative "../../4_raindrops.rb" }.to output(/PlangPlong/).to_stdout
  end
end

describe "4_raindrops.rb" do
  it "should print 'Plang' when the input is '25'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? '4_raindrops.rb'}
    $".delete(raindrops.first)
    allow_any_instance_of(Object).to receive(:gets).and_return("25\n")
    
    expect{ require_relative "../../4_raindrops.rb" }.to output(/Plang/).to_stdout
  end
end

describe "4_raindrops.rb" do
  it "should print 'Plang' when the input is '21'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? '4_raindrops.rb'}
    $".delete(raindrops.first)
    allow_any_instance_of(Object).to receive(:gets).and_return("21\n")
    
    expect{ require_relative "../../4_raindrops.rb" }.to output(/PlingPlong/).to_stdout
  end
end

describe "4_raindrops.rb" do
  it "should print 'Plang' when the input is '21'", points: 1 do
    # Un-require raindrops.rb
    raindrops = $".select{|r| r.include? '4_raindrops.rb'}
    $".delete(raindrops.first)
    allow_any_instance_of(Object).to receive(:gets).and_return("21\n")
    
    expect{ require_relative "../../4_raindrops.rb" }.to output(/PlingPlong/).to_stdout
  end
end
