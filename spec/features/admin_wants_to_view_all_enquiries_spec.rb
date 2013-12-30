require 'spec_helper'

feature "Admin visits the all enquiries home page", %q{
  As a admin 
  I want to see all the contact inquiries
  So I thank them
} do

  # Acceptance Criteria:
  # I must be able to create a new contact from the home page

  context "expect page to have content" do
  it "all of the user content on the page" do
      contact1 = FactoryGirl.create(:contact)
      contact2 = FactoryGirl.create(:contact, first_name: 'dave', last_name: 'bob')
    visit '/contacts'
      expect(page).to have_content contact1.description
      expect(page).to have_content contact1.first_name
      expect(page).to have_content contact1.last_name
      expect(page).to have_content contact1.subject
      expect(page).to have_content contact1.email_address
      expect(page).to have_content("dave")
      expect(page).to have_content("bob")
  end
end 

  context "Admin to be abel to delete items" do
  it "if we click destroy it should delete the item" do
      contact1 = FactoryGirl.create(:contact)
    visit '/contacts'
      expect(page).to have_content contact1.description
      expect(page).to have_content contact1.first_name
      expect(page).to have_content contact1.last_name
      expect(page).to have_content contact1.subject
      expect(page).to have_content contact1.email_address
      click_on "Destroy"
      expect(page).to_not have_content contact1.description
      expect(page).to_not have_content contact1.first_name
      expect(page).to_not have_content contact1.last_name
      expect(page).to_not have_content contact1.subject
      expect(page).to_not have_content contact1.email_address
  end
end

end