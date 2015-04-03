require 'rails_helper'

describe 'the add blog post process', js: true do
  it 'adds a new blog post' do
    @user = User.create(:name => 'Bob')
    visit user_path(@user)
    click_on 'Add a new blog post'
    fill_in 'Title', :with => 'Today'
    fill_in 'Body', :with => 'today I ate a sandwhich.'
    fill_in 'Date', :with => '01/03/2015'
    click_on 'Post'
    expect(page).to have_content 'Today'
  end

  it "edits a post" do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post)
    visit user_post_path(user, post)
    click_on "Edit"
    fill_in "Title", :with => "super stuff"
    fill_in "Body", :with => "cool stuff"
    fill_in "Date", :with => "01/05/1992"
    click_on "Post"
    expect(page). to have_content "cool stuff"
  end
end
