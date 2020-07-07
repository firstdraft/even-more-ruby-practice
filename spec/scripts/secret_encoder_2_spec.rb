describe "secret_encoder.rb" do
  it "should output 'don't tell anyone our code'", points: 1 do

 # Un-require secret_encoder.rb
    secret_encoder = $".select{|r| r.include? 'secret_encoder.rb'}
    $".delete(secret_encoder.first)

    allow_any_instance_of(Object).to receive(:gets).and_return("don't tell anyone our code\n")
    expect { require_relative '../../secret_encoder.rb' }.to output(/D4n't t2ll 1ny4n2 45r c4d2/).to_stdout
  end
end