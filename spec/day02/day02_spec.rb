require 'spec_helper'

describe Day02 do
  let(:sample_data) { File.read("./spec/day02/sample_data") }
  let(:input) { File.read("./spec/day02/input") }

  context "part 1" do
    it "solves with sample data" do
      expect(Day02.part1(sample_data)).to eq(15)
    end

    it "solves with input" do
      expect(Day02.part1(input)). to eq(14531)
    end
  end

  context "part 1" do
    it "solves with sample data" do
      expect(Day02.part2(sample_data)).to eq(12)
    end

    it "solves with input" do
      expect(Day02.part2(input)). to eq(11258)
    end
  end
end
