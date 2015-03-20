require 'rails_helper'

describe "the add a user process" do
  it "adds a new user" do
    visit users_path
    fill_in 'Name', :with => 'Bob'
    click_on 'Sign Up'
    expect(page).to have_content 'Bob'
  end
end
