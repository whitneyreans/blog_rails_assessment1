require 'rails_helper'

describe 'the add comment to post process', js: true do
  it 'adds a new comment' do
    post = FactoryGirl.create(:post)
    user = FactoryGirl.create(:user)
    visit user_post_path(user, post)
    click_on 'Add a Comment'
    fill_in 'Body', :with => 'today I ate a sandwich.'
    fill_in 'Date', :with => '01/03/2015'
    click_on 'Post Comment'
    expect(page).to have_content 'sandwich'
  end
end
