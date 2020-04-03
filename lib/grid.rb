require_relative 'cell'

class Grid
  def initialize(width, height)
    @grid = create_grid(width, height)
  end

  def print_grid
    @grid.each do |row|
      row.each do |cell|
        print cell
      end
      print "\n"
    end
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

a = Grid.new(3,3)
a.print_grid
puts '___'
a.mark_square(0,1)
a.print_grid
