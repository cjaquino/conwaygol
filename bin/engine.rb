require_relative '../lib/grid'


class Engine
  def initialize
    width, height = get_dimensions
    @grid = Grid.new(width, height)
    select_starting_markers(@grid)
  end

  def play

  end

  def get_dimensions
    puts "Welcome to Conway's Game of Life!"
    puts "Please enter the width:"
    width = gets.chomp.to_i
    puts "Please enter the height:"
    height = gets.chomp.to_i

    # starting_markers = select_starting_markers(width, height, @grid)

    [width, height]
  end

  def select_starting_markers(grid)
    puts grid
    done = false
    while !done
      puts "Select a cell you want to start alive"
      coords = get_coordinate
      i, j = coords.split(',').map(&:to_i)
      grid.mark_cell(i, j)

      puts grid

      puts "Are you done selecting cells? (y or n)"
      done = true if "Yy".include?(gets.chomp)
    end
  end

  def get_coordinate
    coord = ''
    loop do
      print "Cell coordinates (comma-separated):"
      coord = gets.chomp
      break if coord.match?(/\A[0-9]+,[0-9]+\z/)
      puts "Please enter a coordinate in the form of i,j"
    end
    coord
  end
end


Engine.new.play
