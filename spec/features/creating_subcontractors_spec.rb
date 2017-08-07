require "rails_helper"

RSpec.feature "Creating Subcontractors" do
  scenario "A user creates a new subcontractor" do
    visit "locations/new"
    fill_in "Company name", with: "Jims Subcontractors"
    fill_in "Address", with: "12 high street"
    fill_in "City", with: "Manchester"
    fill_in "Postcode", with: "m20 2wz"
    click_button "Add!"
    expect(page.current_path).to eq(root_path)
  end
end
