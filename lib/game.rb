class Game

  def initialize file_path = nil
    @world = World.new file_path
  end
  
  def draw
    puts
    @world.travel_rows do |world_row|
      world_row.each do |cell|
        cell_value = cell.alive ? '0' : '.'
        print " #{cell_value} "
      end
      puts
    end
  end
  
  def progress
    @world.travel_cells do |cell|
      neighbors_count = @world.count_neighbors cell
      cell.evolve neighbors_count
    end
    update
  end
  
  def update
    @world.travel_cells do |cell|
      cell.update
    end
  end
end