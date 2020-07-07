describe "secret_encoder.rb" do
  it "should output 'Our encoded message'", points: 1 do
    allow_any_instance_of(Object).to receive(:gets).and_return("I need to be more secret\n")
    expect { require_relative '../../secret_encoder.rb' }.to output(/3 n22d t4 b2 m4r2 s2cr2t/).to_stdout
  end
end