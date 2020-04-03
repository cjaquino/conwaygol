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

  def mark_cell(i, j)
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

  def alive_neighbors_count(i, j)
    alive_neighbors(i, j).size
  end

  def alive_neighbors(i, j)
    neighbors(i, j).select { |neighbor| neighbor.state == :alive }
  end

  def neighbors(i,j)
    diff_idx = [[-1,-1],[0,-1],[1,-1],[-1,0],[1,0],[-1,1],[0,1],[1,1]]

    diff_idx.map do |di, dj|
      if (i+di) < 0 || (i+di) >= @width || (j+dj) < 0 || (j+dj) >= @height
        nil
      else
        @grid[(j+dj)][(i+di)]
      end
    end.select { |neighbor| neighbor }
  end
end
