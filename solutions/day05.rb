# frozen_string_literal: true

module Day05
  class << self

    def part1(input)
      crates = parse_crates(input)
      moves = parse_moves(input)
      binding.pry
    end

    def part2(input)
    end

    private

    def move_crates(crates, iterations, from_index, to_index)
      iterations.times do
        ###

      end
    end

    def parse_moves(input)
      input.filter_map do |line|
        line.scan(/\d+/).map(&:to_i)
      end.reject{ _1.empty?}
    end

    def parse_crates(input)
      crates = input
        .take_while { _1[0..1] != " 1" }
        .map { _1.chars.to_a}
        .transpose

      cc = []
      crates.each_with_index do |val, index|
        cc << val.filter{ _1 != " "}.reverse if index % 4 == 1
      end
      cc
    end
  end
end

