require 'docking_station'

describe DockingStation do

  describe 'when releasing bikes' do

    it 'responds to #release_bike' do
      expect(subject).to respond_to :release_bike
    end

  end

end