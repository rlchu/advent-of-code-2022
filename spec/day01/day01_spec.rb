require 'spec_helper'

describe Day01 do
  let(:sample_data) { File.read("./spec/day01/sample_data").split("\n") }
  let(:input) { File.read("./spec/day01/input").split("\n") }

  context "part 1" do
    it "solves with sample data" do
      expect(Day01.part1(sample_data)).to eq(24000)
    end

    it "solves with input" do
      expect(Day01.part1(input)). to eq(69693)
    end
  end

  context "part 2" do
    it "solves with sample data" do
      expect(Day01.part2(sample_data)).to eq(45000)
    end

    it "solves with input" do
      expect(Day01.part2(input)). to eq(200945)
    end
  end
end
