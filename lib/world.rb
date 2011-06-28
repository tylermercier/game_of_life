class World
  
  def initialize file_path
    @world_builder = WorldBuilder.new
    create file_path
  end
  
  def create file_path
    if file_path != nil
      puts "Building world from #{file_path}"
      @world = @world_builder.build_from_file file_path
    else
      puts "Building world"
      @world = @world_builder.build
    end
  end
  
  def travel_rows &row_lambda
    @world.each do |world_row|
      row_lambda.call world_row
    end
  end
  
  def travel_cells &cell_lambda
    @world.each do |world_row|
      world_row.each do |cell|
        cell_lambda.call cell
      end
    end
  end
  
  def count_neighbors cell
    neighbors = 0
    
    neighbors += 1 if get_neighbor_status cell.x, cell.y - 1
    neighbors += 1 if get_neighbor_status cell.x, cell.y + 1
    neighbors += 1 if get_neighbor_status cell.x + 1, cell.y - 1
    neighbors += 1 if get_neighbor_status cell.x + 1, cell.y
    neighbors += 1 if get_neighbor_status cell.x + 1, cell.y + 1
    neighbors += 1 if get_neighbor_status cell.x - 1, cell.y - 1
    neighbors += 1 if get_neighbor_status cell.x - 1, cell.y + 1
    neighbors += 1 if get_neighbor_status cell.x - 1, cell.y
    
    return neighbors
  end
  
  private
  
  def get_neighbor_status x, y
    x_cord = safely_access_array x, @world.length
    y_cord = safely_access_array y, @world[x_cord].length
      
    return @world[x_cord][y_cord].alive
  end
  
  def safely_access_array cord, size
    return size - 1 if cord < 0
    return 0 if cord >= size
    return cord
  end
  
end