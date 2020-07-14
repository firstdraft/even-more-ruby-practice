describe "fibonacci.rb" do
  
    it "should output the correct response", points: 1 do
      # Un-require fibonacci.rb
      fibonacci = $".select{|r| r.include? 'fibonacci.rb'}
      $".delete(fibonacci.first)
      response = File.read("spec/support/fibonacci.txt")
      expect { require_relative("../../fibonacci") }.to output(Regexp.new(response)).to_stdout
    end
  end