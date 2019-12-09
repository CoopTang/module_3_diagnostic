require 'rails_helper'

# As a user,
# When I visit "/"
# And I Select "Gryffindor" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see a total of the number of members for that house. (21 for Gryffindor)
# Then I should see a list of 21 members
# And for each of the members I should see:
# - The name of the member
# - The members role (if it exists)
# - The house the member belongs to
# - The Patronus of the member (if it exists)

RSpec.describe 'As a User' do
  describe 'when I visit the root directory ("/")' do
    describe 'and I select "Gryffindor" from the select field' do
      describe 'and I click "Search For Members"' do
        before :each do
          visit '/'

          select 'Gryffindor', from: :house

          click_button 'Search For Members'
        end
          
        it 'I should be on "/search"', :vcr do
          expect(current_path).to eq('/search')
        end

        it 'I should see a total of the number of members for that house', :vcr do
          expect(page).to have_content('Results: 21')
        end
      end
    end
  end
end
