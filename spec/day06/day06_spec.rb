require 'spec_helper'

describe Day06 do
  let(:sample_data) { File.read("./spec/day06/sample_data").gsub("\n", "")}
  let(:input) { File.read("./spec/day06/input").gsub("\n","") }

  context "part 1" do
    it "solves with sample data" do
      expect(Day06.new(sample_data).part1).to eq(7)
    end

    it "solves with input" do
      expect(Day06.new(input).part1).to eq(1578)
    end
  end

  context "part 2" do
    it "solves with sample data" do
      expect(Day06.new(sample_data).part2).to eq(19)
    end

    it "solves with input" do
      expect(Day06.new(input).part2).to eq(2178)
    end
  end
end
