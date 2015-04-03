require 'rails_helper'

describe "the log in a user process", js: true do
  it "logs a new user in" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_on "Log In"
    fill_in 'Name', :with => user.name
    fill_in 'Email', :with => user.email
    fill_in "Password", :with => user.password
    click_on 'Log in'
    expect(page).to have_content user.name
  end
end
