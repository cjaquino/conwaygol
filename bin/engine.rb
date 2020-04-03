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
    done = false
    while !done
      puts "Select the cells you want to start alive"
      puts "(comma separated with no spaces)"
      puts grid
      puts "Are you done? (y or n)"
      done = true if "Yy".include?(gets.chomp)
    end

  end
end


Engine.new.play
