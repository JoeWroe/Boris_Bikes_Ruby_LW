require 'bike'

describe Bike do

  subject(:bike) {described_class.new}

  describe 'so a user can get a working bike' do

    it 'responds to #working?' do
      expect(bike).to respond_to :working?
    end
  end
end
