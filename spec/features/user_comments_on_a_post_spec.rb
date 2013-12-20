require 'spec_helper'

feature "User comments on a post" do
  scenario "user comments on a post" do
    post = FactoryGirl.create(:post)

    visit post_path(post)
    fill_in "Email", with: "jmoon@aol.com"
    fill_in "Body", with: "I disagree with what you said."
    click_on "Save comment"

    expect(page).to have_content "Cool story breux"
  end

  scenario "User submits an invalid comment" do
    post = FactoryGirl.create(:post)

    visit post_path(post)
    click_on "Save comment"

    expect(page).to have_content "Body can't be blank"
    expect(page).to have_content "Email does not appear to be valid"
  end
end
