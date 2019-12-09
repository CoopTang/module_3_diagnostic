require 'rails_helper'

RSpec.describe PotterService do
  it 'It can get all characters by their house for the Potter api', :vcr do
    response = PotterService.get_members_by_house('Gryffindor')

    expect(response.length).to eq(21)
    response.each do |member|
      expect(member[:orderOfThePhoenix]).to eq(true)
    end
  end
end