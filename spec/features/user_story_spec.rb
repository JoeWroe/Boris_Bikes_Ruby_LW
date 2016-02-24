require 'docking_station'
require 'bike'

describe 'Features' do

  describe 'USER STORY THREE' do
    # As a member of the public
    # So I can return bikes I've hired
    # I want to dock my bike at the docking station

    it 'A bike can be docked at a station' do
      ds   = DockingStation.new
      bike = Bike.new
      expect(ds.dock_bike(bike)). to eq(bike)
    end
  end

  describe 'USER STORY FIVE' do
    # As a member of the public,
    # So that I am not confused and charged unnecessarily,
    # I'd like docking stations not to release bikes when there are none available.

    it 'A station does not release a bike if none are working' do
      ds   = DockingStation.new
      bike = Bike.new
      expect {ds.release_bike}.to raise_error('No bikes avaliable.')
    end
  end

  describe 'USER STORY SIX' do
    # As a maintainer of the system,
    # So that I can control the distribution of bikes,
    # I'd like docking stations not to accept more bikes than their capacity.

    it 'A full station raises an error if another #dock_bike is attempted' do
      ds    = DockingStation.new
      ds.dock_bike(Bike.new)
      expect {ds.dock_bike(Bike.new)}.to raise_error('Docking station full.')
    end
  end
end
