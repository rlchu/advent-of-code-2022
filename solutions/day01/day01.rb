module Day01
  class << self

    def part1(data)
      data.split("\n")
        .chunk_while{ |x| x != "" }
        .map{ |x| x.map(&:to_i).sum }
        .max
    end

    def part2(data)

    end

  end
end

