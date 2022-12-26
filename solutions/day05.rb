class Day05
  attr_accessor :crates, :moves

  def initialize(input)
    parse_crates!(input)
    parse_moves!(input)
  end

  def part1
    moves.each do |move|
      move_crates(move[0], move[1]-1, move[2]-1)
    end
    top_crate
  end

  def part2
    moves.each do |move|
      move_crates_in_batches(move[0], move[1]-1, move[2]-1)
    end
    top_crate
  end

  private

  def top_crate
    crates.map(&:last).join
  end

  def move_crates_in_batches(quantity, from_index, to_index)
    batch = []
    quantity.times do
      batch.unshift(crates[from_index].pop)
    end
    crates[to_index] = crates[to_index] + batch
  end

  def move_crates(iterations, from_index, to_index)
    iterations.times do
      crates[to_index].push(crates[from_index].pop)
    end
  end

  def parse_moves!(input)
    @moves = input.filter_map do |line|
      line.scan(/\d+/).map(&:to_i)
    end.reject{ _1.empty?}[1..]
  end

  def parse_crates!(input)
    @crates = []
    input.take_while { _1[0..1] != " 1" }
      .map { _1.chars.to_a}
      .transpose
      .each_with_index do |val, index|
      crates << val.filter{ _1 != " "}.reverse if index % 4 == 1
    end
  end
end

