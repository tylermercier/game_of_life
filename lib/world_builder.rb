require 'cell'

class WorldBuilder
  def initialize row_size = 10, column_size = 10, life_probability = 0.5
    @row_size = row_size
    @column_size = column_size
    @life_probability = life_probability
  end

  def build
    world = []
    @column_size.times do |x|
      row = build_row x
      world << row
    end
    world
  end

  def build_from_file file_path
    world = []
    File.open(file_path, "r") do |infile|
      line_counter = 0
      while (line = infile.gets)
        row = []
        row_counter = 0
        line.split(',').each do |item|
          cell = Cell.new line_counter, row_counter, item.to_i == 1
          row << cell
          row_counter += 1
        end
        world << row
        line_counter += 1
      end
    end
    world
  end

  private

  def build_row x
    world_row = []
    @row_size.times do |y|
      cell = build_cell x, y
      world_row << cell
    end
    world_row
  end

  def build_cell x, y
    alive = rand >= @life_probability ? false : true
    Cell.new x, y, alive
  end
end