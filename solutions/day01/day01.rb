module Day01
  class << self

    def part1(data)
      cals_totals(data).max
    end

    def part2(data)
      cals_totals(data).max(3).sum
    end

    private

    def cals_totals(data)
      data.chunk_while{ |x| x != "" }
        .map{ |x| x.map(&:to_i).sum }
    end
  end
end

