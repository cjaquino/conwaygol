class Cell
  STATES = [:dead, :alive]
  STARTING_STATE = STATES[0]

  attr_reader :state

  def initialize
    @state = STARTING_STATE
  end

  def die
    @state = :dead
  end

  def live
    @state = :alive
  end

  def to_s
    @state == :dead ? "-" : "X"
  end
end
