require_relative 'cell'

class Grid
  def initialize(width, height)
    @grid = [[Cell.new]*width]*height
  end

  def print_grid
    @grid.each do |row|
      row.each do |cell|
        print cell
      end
      print "\n"
    end
  end
end
