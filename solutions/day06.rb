class Day06
  attr_reader :datastream

  def initialize(input)
    @datastream = input
  end

  def part1
    marker(4)
  end

  def part2
    marker(14)
  end

  private

  def marker(n)
    datastream.chars.each_cons(n).with_index do |slice, i|
      return i + n if slice.uniq.length == n
    end
  end
end

