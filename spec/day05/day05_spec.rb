require 'spec_helper'

describe Day05 do
  let(:sample_data) { File.read("./spec/day05/sample_data").split("\n") }
  let(:input) { File.read("./spec/day05/input").split("\n") }

  context "part 1" do
    it "solves with sample data" do
      expect(Day05.new(sample_data).part1).to eq("CMZ")
    end

    it "solves with input" do
      expect(Day05.new(input).part1).to eq("SHQWSRBDL")
    end
  end

  context "part 2" do
    it "solves with sample data" do
      expect(Day05.new(sample_data).part2).to eq("MCD")
    end

    it "solves with input" do
      expect(Day05.new(input).part2).to eq("CDTQZHBRS")
    end
  end
end
