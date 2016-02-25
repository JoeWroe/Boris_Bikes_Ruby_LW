require 'garage'

describe Garage do

  subject(:garage) {described_class.new}

  let(:van) {double :van, van_bikes:['bike']}

  describe 'when working on bikes' do

    it 'responds to #bikes with a data structure that can handle multiple bikes' do
      expect(garage.bikes).to eq([])
    end

    it 'can accept new bikes from a van' do
      garage.unload_van(van)
      expect(garage.bikes.length).to eq(1)
    end
  end
end
