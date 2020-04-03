class Engine
  def play
    get_starting_info
  end

  def get_starting_info
    # returns [width, height, starting_markers_array]
    puts "Welcome to Conway's Game of Life!"
    puts "Please enter the width:"
    width = gets.chomp.to_i
    puts "Please enter the height:"
    height = gets.chomp.to_i

    starting_markers = select_starting_markers(width, height)

    [width, height, starting_markers]
  end

  def select_starting_markers(width, height)
    puts "Select the cells you want to start alive"
    puts "(comma separated with no spaces)"
    

  end
end


Engine.new.play
