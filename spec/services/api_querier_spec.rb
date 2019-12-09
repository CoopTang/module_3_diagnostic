require 'rails_helper'

RSpec.describe 'ApiQuerier' do
  it 'can query an API', :vcr do
    response = ApiQuerier.query_api(
      'https://www.potterapi.com/v1/',
      'characters?house=Gryffindor&orderOfThePhoenix=true',
      ENV['POTTER_API_KEY']
    )
    expect(response.length).to eq(21)
  end
end