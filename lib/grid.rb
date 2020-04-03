require_relative 'cell'

class Grid
  attr_reader :grid, :width, :height

  def initialize(width, height)
    @width = width
    @height = height
    @grid = create_grid(width, height)
  end

  def to_s
    puts ""
    @grid.each do |row|
      row.each do |cell|
        print "#{cell} "
      end
      print "\n"
    end
    ""
  end

  def mark_square(i, j)
    @grid[j][i].live
  end

  def create_grid(width, height)
    row = []
    grid = []
    height.times do |_|
      width.times { |_| row << Cell.new}
      grid << row
      row = []
    end

    grid
  end
end
