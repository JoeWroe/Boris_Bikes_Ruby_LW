require 'docking_station'

describe DockingStation do

  subject(:ds) {described_class.new}

  let(:bike) {double :bike}

  describe 'management' do

    it 'can accept 20 bikes' do
      expect{DockingStation::DEFAULT_CAPACITY.times {ds.dock_bike(Bike.new)}}.not_to raise_error
    end
  end

  describe 'when releasing bikes' do

    it 'responds to #release_bike' do
      expect(ds).to respond_to :release_bike
    end

    it 'releases working bikes' do
      allow(bike).to receive(:working?).and_return(true)
      ds.dock_bike(bike)
      expect(bike).to be_working
      expect(ds.release_bike(bike)).to eq(bike)
    end

    it 'raises an error if #release_bike is called and none are avaliable' do
      expect {ds.release_bike(bike)}.to raise_error('No bikes avaliable.')
    end
  end

  describe 'when docking a bike' do

    it 'responds to #dock_bike' do
      expect(ds).to respond_to :dock_bike
    end
  end
end
