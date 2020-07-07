describe "DnD_stat_roll.rb" do
  it "should output '14' given the input '2 3 5 6'" , points: 1 do
    allow_any_instance_of(Object).to receive(:gets).and_return("2 9")

    expect { require_relative '../../DnD_stat_roll' }.to output(/"?Enter at least 2 numbers, separated by spaces:"?\n2\n/).to_stdout
  end
end