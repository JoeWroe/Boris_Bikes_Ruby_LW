require 'van'

describe Van do

  subject(:van) {described_class.new}

  describe 'when collecting bikes' do

    it 'responds to #collect_broken_bikes' do
      expect(van).to respond_to :collect_broken_bikes
    end
  end
end
