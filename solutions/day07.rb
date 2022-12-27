class Day07
  attr_accessor :filestructure, :current_directory, :file_sizes

  def initialize(input)
    @current_directory = "/"
    @filestructure = input
    @file_sizes = Hash.new {|h,k| h[k]=[]}
  end

  def part1
    @filestructure.each do |command|
      cd = command.scan(/\$ cd (.+)/).first&.first
      @current_directory = cd if cd
      file_sizes[@current_directory] << command.to_i if command.to_i > 0
    end
    # a = filestructure.chunk_while do |command|
    #   !(command =~ /\$ cd/)
    # end.each do |i, j|

    # end
  end

  def part2

  end

  private
end

