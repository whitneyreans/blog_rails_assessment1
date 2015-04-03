require 'rails_helper'

describe "the add a user process", js: true do
  it "adds a new user" do
    visit root_path
    click_on "Sign Up"
    fill_in 'Name', :with => 'Bob'
    fill_in 'Email', :with => "me@me.com"
    fill_in "Password", :with => "test1234"
    fill_in "Password confirmation", :with => "test1234"
    fill_in "Phone", :with => "9183132501"
    click_on 'Sign Up'
    expect(page).to have_content 'Bob'
  end
end
