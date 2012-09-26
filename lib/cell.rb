class Cell
  attr_accessor :x, :y, :alive, :next_state

  def initialize x, y, alive
    @x = x
    @y = y
    @alive = alive
    @next_state = alive
  end

  def evolve neighbor_count
    if @alive
      @next_state = evolve_live neighbor_count
    else
      @next_state = evolve_dead neighbor_count
    end
  end

  def update
    @alive = @next_state
  end

  private

  def evolve_live neighbor_count
    neighbor_count == 2 || neighbor_count == 3
  end

  def evolve_dead neighbor_count
    neighbor_count == 3
  end
end