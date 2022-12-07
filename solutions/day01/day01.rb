# part 1

module Day01
  class << self

    def part1(data)
      data.split("\n")
        .chunk_while{|x| x != ""}
        .map{|x| x.map(&:to_i).sum}
        .max
    end

  end
end




