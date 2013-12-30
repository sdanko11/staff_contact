require 'spec_helper'

feature "User visits the contact home page", %q{
  As a site visitor 
  I want to visit the contact home page
  So I can tell them site employees how awesome they are
} do

  # Acceptance Criteria:
  # I must be able to create a new contact from the home page

  context "expect page to have content" do
  it "has all the fields we want to have" do
    visit '/contacts'

    expect(page).to have_content "Listing contacts"
    find_link('New Contact').visible?
    # expect(page).to have_content "Create Contact"
  end

end 
end
