require 'rails_helper'

RSpec.describe PotterFacade do
  before :each do
    @facade = PotterFacade.new('Gryffindor')
  end

  it '#house_name', :vcr do
    expect(@facade.house_name).to eq('Gryffindor')
  end

  it '#house_members_count', :vcr do
    expect(@facade.house_members_count).to eq(21)
  end
end
