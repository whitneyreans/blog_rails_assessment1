require 'rails_helper'

describe 'the add blog post process' do
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
end
