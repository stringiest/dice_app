require "dice"

describe Dice do

  it "allows the use to create an instance of dice" do
    expect(subject).to be_instance_of Dice
  end

  it "allows the user to roll a dice" do
    expect(subject).to respond_to :roll
  end

  it "dice roll returns a number from 1 to 6" do
    expect(subject.roll(1)).to be_between(1, 6)
  end

  it "allows the user to specify the number of rolls" do
    expect(subject).to respond_to(:roll).with(1).argument
  end

  it "records each dice roll" do
    expect(subject.roll(1)).to eq subject.get_roll_array[-1]
  end
    # could test by array increasing in length
    # could test by dice roll = last character in array

end
