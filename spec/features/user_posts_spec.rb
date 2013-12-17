require 'spec_helper'

feature "User views posts" do
  scenario "User sees all the posts" do
    post1 = FactoryGirl.create(:post)
    post2 = FactoryGirl.create(:post)
    post3 = FactoryGirl.create(:post)

    visit root_path
    expect(page).to have_content post1.title
    expect(page).to have_content post2.title
    expect(page).to have_content post3.title
  end
end
