require 'spec_helper'

describe Day08 do
  let(:sample_data) { File.read("./spec/day08/sample_data").split("\n")}
  let(:input) { File.read("./spec/day08/input").split("\n") }

  context "part 1" do
    it "solves with sample data" do
      expect(Day08.new(sample_data).part1).to eq(21)
    end

    it "solves with input" do
      expect(Day08.new(input).part1).to eq(nil)
    end
  end

  # context "part 2" do
  #   it "solves with sample data" do
  #     expect(Day08.new(sample_data).part2).to eq(nil)
  #   end

  #   it "solves with input" do
  #     expect(Day08.new(input).part2).to eq(nil)
  #   end
  # end
end
