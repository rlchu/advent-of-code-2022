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
      data.split("\n").map do |round|
        round = apply_strategy_guide(round.split(" "))
        battle_result(round)
      end.sum
    end

    private

    def apply_strategy_guide(round)
        opp = LETTER_OBJECTS[round[0]]
        if round.last == "X"
          [opp, losing_choice(opp)]
        elsif round.last == "Z"
          [opp, winning_choice(opp)]
        else
          [opp, opp]
        end
    end

    def winning_choice(opp)
      return "scissors" if opp ==  "paper"
      return "paper" if opp == "rock"
      return "rock" if opp == "scissors"
    end

    def losing_choice(opp)
      return "rock" if opp ==  "paper"
      return "scissors" if opp == "rock"
      return "paper" if opp == "scissors"
    end

    def battle_result(round)
      comparison_result(round) + SHAPE_POINTS[round.last]
    end

    def comparison_result(round)
      return 3 if round[0] == round[1]
      return 6 if round in ["rock", "paper"] | ["paper", "scissors"] | ["scissors", "rock"]
      0
    end
  end
end

