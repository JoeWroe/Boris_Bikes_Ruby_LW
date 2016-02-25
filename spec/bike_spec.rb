require 'bike'

describe Bike do

  subject(:bike) {described_class.new}

  describe 'when a user can reports a bike as broken' do

    it 'is not working' do
      bike.report_broken
      expect(bike.working).to eq(false)
    end
  end

  describe 'so a user can get a working bike' do

    it 'responds to #working?' do
      expect(bike).to respond_to :working
    end
  end
end
