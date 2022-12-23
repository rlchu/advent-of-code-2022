require 'spec_helper'

describe Day04 do
  let(:sample_data) { File.read("./spec/day04/sample_data").split("\n") }
  let(:input) { File.read("./spec/day04/input").split("\n") }

  context "part 1" do
    it "solves with sample data" do
      expect(Day04.part1(sample_data)).to eq(2)
    end

    it "solves with input" do
      expect(Day04.part1(input)). to eq(588)
    end
  end

  context "part 2" do
    it "solves with sample data" do
      expect(Day04.part2(sample_data)).to eq(4)
    end

    it "solves with input" do
      expect(Day04.part2(input)). to eq(911)
    end
  end
end
