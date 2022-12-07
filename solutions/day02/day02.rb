# frozen_string_literal: true

module Day02
  class << self
    LETTER_OBJECTS = {
      "A" => "rock",
      "B" => "paper",
      "C" => "scissors",
      "X" => "rock",
      "Y" => "paper",
      "Z" => "scissors"
    }

    SHAPE_POINTS = {
      "rock" => 1,
      "paper" => 2,
      "scissors" => 3
    }

    def part1(data)
      data.split("\n").map do |round|
        battle_result(round.split(" ").map{|letter| LETTER_OBJECTS[letter]})
      end.sum
    end

    def part2(data)
    end

    private

    def battle_result(round)
      comparison_result(round) + SHAPE_POINTS[round.last]
    end

    def comparison_result(round)
      return 3 if round[0] == round[1]

      case round
      in ["rock", "paper"] | ["paper", "scissors"] | ["scissors", "rock"]
        6
      else
        0
      end
    end
  end
end

