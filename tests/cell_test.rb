class CellSpec < Test::Unit::TestCase
  
  def test_evolve_should_be_live_when_cell_with_2_neighbors_should_live
    cell = Cell.new 0, 0, true
    cell.evolve 2
    assert_equal(true, cell.next_state)
  end
  
  def test_evolve_should_be_live_when_cell_with_4_neighbors_should_die
    cell = Cell.new 0, 0, true
    cell.evolve 4
    assert_equal(false, cell.next_state)
  end
  
  def test_evolve_should_be_live_when_cell_with_1_neighbor_should_die
    cell = Cell.new 0, 0, true
    cell.evolve 1
    assert_equal(false, cell.next_state)
  end
  
  def test_evolve_should_be_dead_when_cell_with_2_neighbors_should_die
    cell = Cell.new 0, 0, false
    cell.evolve 2
    assert_equal(false, cell.next_state)
  end
  
  def test_evolve_should_be_dead_when_cell_with_3_neighbors_should_live
    cell = Cell.new 0, 0, false
    cell.evolve 3
    assert_equal(true, cell.next_state)
  end
  
end