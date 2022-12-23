# frozen_string_literal: true

module Day04
  class << self
    PRIORITY_ORDER = " abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".split("")

    def part1(rucksacks)
      rucksacks.map do
        rucksack = _1.swapcase
        priority = divide_into_compartments(rucksack.chars).inject(:&).sort.first.swapcase
        PRIORITY_ORDER.find_index(priority)
      end.sum
    end

    def part2(rucksacks)
      rucksacks.each_slice(3).map do |group|
        priority = group.map { _1.swapcase.chars }.inject(:&).first.swapcase
        PRIORITY_ORDER.find_index(priority)
      end.sum
    end

    private

    def divide_into_compartments(rucksack)
      rucksack.each_slice(rucksack.length/2)
    end

  end
end

