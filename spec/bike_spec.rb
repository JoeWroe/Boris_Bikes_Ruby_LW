require 'bike'

describe Bike do

  describe 'so a user can get a working bike' do

    it 'responds to #working?' do
      expect(subject).to respond_to :working?
    end
  end
end
