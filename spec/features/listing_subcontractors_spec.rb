require "rails_helper"

RSpec.feature "Listing Subcontractors" do
  before do
    @subcontractor1 = Location.create(company_name: "Jims Subcontractors", 
                                      address: "11 high Street",
                                      city: "Manchester",
                                      postcode: "M1 2AL")
    @subcontractor2 = Location.create(company_name: "Toms Subcontractors", 
                                      address: "12 high Street",
                                      city: "Manchester",
                                      postcode: "M20 2AL")
 end

 scenario 'A user can see list of Subcontractors' do
  visit "/"
  expect(page).to have_content(@subcontractor1.company_name)
  expect(page).to have_content(@subcontractor1.address)
  expect(page).to have_content(@subcontractor1.city)
  expect(page).to have_content(@subcontractor1.postcode)

  expect(page).to have_content(@subcontractor2.company_name)
  expect(page).to have_content(@subcontractor2.address)
  expect(page).to have_content(@subcontractor2.city)
  expect(page).to have_content(@subcontractor2.postcode)
 end
end
