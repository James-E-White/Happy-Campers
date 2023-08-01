require 'rails_helper'

RSpec.describe NationalParksService do 
  describe 'get_all_campgrounds' do 
    it 'returns a list of all the campgrounds' do 
      VCR.use_cassette('national_parks_service_get_all_campgrounds') do
        campgrounds = NationalParksService.get_all_campgrounds

        expect(campgrounds).to be_an(Hash)
        expect(campgrounds).not_to be_empty
      end
    end
  end
end