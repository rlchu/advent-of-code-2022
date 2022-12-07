require 'spec_helper'

describe Day01 do
  let(:sample_data) {
    "1000
2000
3000

4000

5000
6000

7000
8000
9000

10000"
  }

  it "solves with sample data" do
    expect(Day01.part1(sample_data)).to eq(24000)
  end
end
