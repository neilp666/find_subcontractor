require "rails_helper"

RSpec.feature "Creating Home Page" do
  scenario do
    visit '/'

    expect(page).to have_content('SubContractor Finder.')
    expect(page).to have_content('Use this postcode search to quickly find subcontractors in your area')
  end
end
