require 'spec_helper'

describe Day04 do
  let(:sample_data) { File.read("./spec/day04/sample_data").split("\n") }
  let(:input) { File.read("./spec/day04/input").split("\n") }

  context "part 1" do
    it "solves with sample data" do
      expect(Day04.part1(sample_data)).to eq(157)
    end

    it "solves with input" do
      expect(Day04.part1(input)). to eq(7990)
    end
  end

  context "part 2" do
    it "solves with sample data" do
      expect(Day04.part2(sample_data)).to eq(70)
    end

    it "solves with input" do
      expect(Day04.part2(input)). to eq(2602)
    end
  end
end
