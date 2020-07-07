describe "secret_decoder.rb" do
  it "should output 'Our decoded message'", points: 1 do
    allow_any_instance_of(Object).to receive(:gets).and_return("3 n22d t4 b2 m4r2 s2cr2t\n")
    expect { require_relative '../../secret_decoder.rb' }.to output(/I need to be more secret/).to_stdout
  end
end


