require 'spec_helper'

describe Day02 do
  let(:sample_data) {
    "A Y
B X
C Z"
  }

  context "part 1" do
    it "solves with sample data" do
      expect(Day02.part1(sample_data)).to eq(15)
    end
  end
end
