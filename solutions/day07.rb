class Day07
  attr_accessor :filestructure, :current_path, :file_sizes

  def initialize(input)
    @current_path = ["/"]
    @filestructure = input
    @file_sizes = Hash.new(0)
    @file_info = {}
  end

  def part1
    @filestructure.each do |command|
      cd = command.scan(/\$ cd (.+)/).first&.first
      if cd
        @current_path << cd
        @current_path.uniq!
        2.times { current_path.pop } if cd == ".."
      end
      if command.to_i > 0
        file_size, file_name = command.split(" ")
        @file_info[file_name] = {size: file_size.to_i, location: current_path.reverse}
      end
    end

    total = 0

    @file_info.each do |entry|
      entry.last[:location].each do |folder|
        @file_sizes[folder]  += entry.last[:size]
      end
    end

    @file_sizes.each do |val|
      total += val.last if val.last <= 100_000
    end

    total
  end

  def part2

  end

  private

end

