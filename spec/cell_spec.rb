require 'spec_helper'
require 'cell'

describe 'Cell' do
  describe 'evolve' do
    it "should live when cell with 2 neighbors" do
      cell = Cell.new 0, 0, true
      cell.evolve 2
      cell.next_state.should == true
    end

    it "should die when cell with 4 neighbors" do
      cell = Cell.new 0, 0, true
      cell.evolve 4
      cell.next_state.should == false
    end

    it "should die when cell with 1 neighbor" do
      cell = Cell.new 0, 0, true
      cell.evolve 1
      cell.next_state.should == false
    end

    it "should die when cell with 2 neighbors and dead" do
      cell = Cell.new 0, 0, false
      cell.evolve 2
      cell.next_state.should == false
    end

    it "should live when cell with 3 neighbors" do
      cell = Cell.new 0, 0, false
      cell.evolve 3
      cell.next_state.should == true
    end
  end
end