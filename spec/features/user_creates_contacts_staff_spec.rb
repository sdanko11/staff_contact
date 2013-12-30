require 'spec_helper'

feature "User enters a contact requies", %q{
  As a site visitor 
  I want to contact staff memebers
  So I can tell them how awesome they are
} do

  # Acceptance Criteria:
  # * I must specify a valid email address
  # * I must specify a subject
  # * I must specify a description
  # * I must specify a first name
  # * I must specify a last name

  context "with invalid attributes" do
  it "sees errors for invalid attributes" do
    visit 'contacts/new'

    click_on "Contact" 

    expect(page).to have_content "Email address can't be blank"
    expect(page).to have_content "Subject can't be blank"
    expect(page).to have_content "Description can't be blank"
    expect(page).to have_content "First name can't be blank"
    expect(page).to have_content "Last name can't be blank"
  end

end

context "with invalid attributes" do
  it "sees errors for invalid attributes" do
    visit 'contacts/new'
    fill_in "Email address", with: "stevedanko1@gmail.com"
    fill_in "Description", with: "this is a description"
    click_on "Contact" 
    expect(page).to have_content "Subject can't be blank"
    expect(page).to have_content "First name can't be blank"
    expect(page).to have_content "Last name can't be blank"
  end
end

context "with valid attributes" do
  it "lets the user know the contact request was created succesfully" do
    Contact.new

    visit "contacts/new"
    fill_in "Email address", with: "stevedanko1@gmail.com"
    fill_in "Subject", with: "general feedback"
    fill_in "Description", with: "this is a description"
    fill_in "First name", with: "steve"
    fill_in "Last name", with: "danko"
    click_on "Contact" 
    expect(page).to have_content "Contact was successfully created."
  end
end

end