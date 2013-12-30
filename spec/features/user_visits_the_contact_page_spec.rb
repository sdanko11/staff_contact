require 'spec_helper'

feature "User visits the contact page", %q{
  As a site visitor 
  I want to visit the contact page
  So I can tell them site employees how awesome they are
} do

  # Acceptance Criteria:
  # * I must specify a valid email address
  # * I must specify a subject
  # * I must specify a description
  # * I must specify a first name
  # * I must specify a last name

  context "expect page to have content" do
  it "has all the fields we want to have" do
    visit 'contacts/new'

    expect(page).to have_content "Email"
    expect(page).to have_content "Subject"
    expect(page).to have_content "Description"
    expect(page).to have_content "First name"
    expect(page).to have_content "Last name"
    # expect(page).to have_content "Create Contact"
  end
end

end