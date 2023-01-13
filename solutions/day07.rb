class Day07
  attr_accessor :filestructure, :current_path, :file_sizes

  def initialize(input)
    @current_path = ["/"]
    @filestructure = input
    @file_sizes = Hash.new(0)
  end

  def part1
    @filestructure.each do |command|
      cd = command.scan(/\$ cd (.+)/).first&.first
      current_path << cd if cd
      current_path.uniq!
      2.times { current_path.pop } if cd == ".."
      if command.to_i > 0
        current_path.each do |directory|
          @file_sizes[directory] += command.to_i
        end
      end
    end

    total = 0
    @file_sizes.each do |val|
      total += val.last if val.last <= 100_000
    end
    total
  end

  def part2

  end

  private

end

