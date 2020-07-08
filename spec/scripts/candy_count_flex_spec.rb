describe "candy_count_flex.rb" do
  it "Should return 'There are 37 red' when the input is red", points: 1 do

    allow_any_instance_of(Object).to receive(:gets).and_return("red\n")


  


    expect { require_relative '../../candy_count_flex.rb' }.to output(/There are 36 red/).to_stdout
  end
end