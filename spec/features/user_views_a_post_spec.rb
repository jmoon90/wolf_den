require 'spec_helper'

feature "User views a post" do
  scenario "user sees all of the post's information" do
    post = FactoryGirl.create(:post)

    visit root_path
    click_on post.title

    expect(page).to have_content post.title
    expect(page).to have_content post.content
  end
end
