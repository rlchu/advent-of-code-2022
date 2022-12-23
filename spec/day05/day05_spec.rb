require 'spec_helper'

describe Day05 do
  let(:sample_data) { File.read("./spec/day05/sample_data").split("\n") }
  let(:input) { File.read("./spec/day05/input").split("\n") }

  context "part 1" do
    it "solves with sample data" do
      expect(Day05.part1(sample_data)).to eq(nil)
    end

    it "solves with input" do
      expect(Day05.part1(input)). to eq(nil)
    end
  end

  context "part 2" do
    it "solves with sample data" do
      expect(Day05.part2(sample_data)).to eq(nil)
    end

    it "solves with input" do
      expect(Day05.part2(input)). to eq(nil)
    end
  end
end
