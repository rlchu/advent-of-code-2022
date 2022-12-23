module Day04
  class << self

    def part1(pairs)
      scan_intersections(pairs) do |intersection,count,r1, r2|
        intersection == r1 || intersection == r2 ? count+=1 : count
      end
    end

    def part2(pairs)
      scan_intersections(pairs) do |intersection, count, _, _|
        intersection.empty? ? count : count+=1
      end
    end

    private

    def scan_intersections(pairs, &block)
      pairs.reduce(0) do |count, pair|
        p1,p2 =  pair.split(",").map{ _1.split("-") }
        r1 = (p1.first.to_i..p1.last.to_i).to_a
        r2 = (p2.first.to_i..p2.last.to_i).to_a
        intersection = r1 & r2
        yield intersection, count, r1, r2
      end
    end
  end
end

