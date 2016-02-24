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
end
