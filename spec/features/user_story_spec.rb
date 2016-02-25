require 'docking_station'
require 'bike'

describe 'Features' do

  subject(:ds)   {DockingStation.new}
  subject(:bike) {Bike.new}

  describe 'USER STORY ONE' do
    # As a person,
    # So that I can use a bike,
    # I'd like a docking station to release a bike.

    it 'A docking station can release a bike' do
      ds.dock_bike(bike)
      ds.release_bike(bike)
      expect(ds.bikes).to be_empty
    end
  end

  describe 'USER STORY THREE' do
    # As a member of the public
    # So I can return bikes I've hired
    # I want to dock my bike at the docking station

    it 'A bike can be docked at a station' do
      expect(ds.dock_bike(bike)). to eq([bike])
    end
  end

  describe 'USER STORY FIVE' do
    # As a member of the public,
    # So that I am not confused and charged unnecessarily,
    # I'd like docking stations not to release bikes when there are none available.

    it 'A station does not release a bike if none are working' do
      expect {ds.release_bike(bike)}.to raise_error('No bikes avaliable.')
    end
  end

  describe 'USER STORY SIX' do
    # As a maintainer of the system,
    # So that I can control the distribution of bikes,
    # I'd like docking stations not to accept more bikes than their capacity.

    it 'A full station raises an error if another #dock_bike is attempted' do
      DockingStation::DEFAULT_CAPACITY.times {ds.dock_bike(bike)}
      expect {ds.dock_bike(bike)}.to raise_error('Docking station full.')
    end
  end

  describe 'USER STORY SEVEN' do
    # As a system maintainer,
    # So that I can plan the distribution of bikes,
    # I want a docking station to have a default capacity of 20 bikes.

    it 'A station has a pre-set default capacity' do
      expect(ds.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
    end
  end

  describe 'USER STORY EIGHT' do
    # As a system maintainer,
    # So that busy areas can be served more effectively,
    # I want to be able to specify a larger capacity when necessary.

    it 'The client has the ability to set the capacity of a station' do
      ds50 = DockingStation.new(50)
      expect(ds50.capacity).to eq(50)
    end
  end

  describe 'USER STORY NINE' do
    # As a member of the public,
    # So that I reduce the chance of getting a broken bike in future,
    # I'd like to report a bike as broken when I return it.

    it 'A user can report a bike as broken' do
      bike.report_broken
      expect(bike.working).to eq(false)
    end
  end
end
