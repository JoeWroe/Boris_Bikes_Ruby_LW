require 'docking_station'

describe DockingStation do

  describe 'when releasing bikes' do

    it 'responds to #release_bike' do
      expect(subject).to respond_to :release_bike
    end

    it 'releases working bikes' do
      bike = Bike.new
      subject.dock_bike(bike)
      subject.release_bike
      expect(bike).to be_working
    end

    it 'raises an error if #release_bike is called and none are avaliable' do
      expect {subject.release_bike}.to raise_error('No bikes avaliable.')
    end
  end

  describe 'when docking a bike' do

    it 'responds to #dock_bike' do
      expect(subject).to respond_to :dock_bike
    end
  end
end
