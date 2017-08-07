require "rails_helper"

RSpec.feature "Search for contractors" do
  before do
    @subcontractor1 = Location.create(company_name: "Hawk Electronics Limited",
                                      address: "11 Nicholas Street",
                                      city: "Burnley",
                                      postcode: "BB11 2AL")
 end

 scenario "search returns existing contractors" do
  visit '/'

  fill_in "search", with: "M20 2WZ"
  fill_in "distance", with: "36"
  click_button "Subcontractors near"

  expect(page).to have_content(@subcontractor1.company_name)
 end
end
