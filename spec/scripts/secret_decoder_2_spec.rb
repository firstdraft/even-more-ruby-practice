describe "secret_decoder.rb" do
  it "should output 'Our decoded message'", points: 1 do

  # Un-require secret_decoder.rb
    secret_decoder = $".select{|r| r.include? 'secret_decoder.rb'}
    $".delete(secret_decoder.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("D4n't t2ll 1ny4n2 45r c4d2\n")
    expect { require_relative '../../secret_decoder.rb' }.to output(/Don't tell anyone our code/).to_stdout
  end
end