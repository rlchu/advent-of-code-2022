require 'matrix'

class Day08

  def initialize(input)
    @trees = Matrix.rows(input.map {  _1.split("").map(&:to_i) })
    @row_size = @trees.row_size - 1
    @column_size = @trees.column_size - 1
    @visible_count = 0
  end

  def part1
    @trees.each_with_index do |e, row, col|
      if row == 0 || col == 0 || row == @row_size || col == @column_size
        @visible_count += 1
        next
      end

      at = @trees.row(row)[0...row]
      bt = @trees.row(row)[row+1..@row_size]

      rt = @trees.column(col)[0...col]
      lt = @trees.column(col)[col+1..@column_size]

      if rt + [e] + lt != @trees.column(col).to_a
        binding.pry
      end

      if at.all? { e > _1 } ||
          bt.all? { e > _1 } ||
          rt.all? { e> _1  } ||
          lt.all? { e > _1 }
        @visible_count += 1
        next
      end

    end

    @visible_count
  end

  def part2

  end

  private

end

