require 'spec_helper'

feature "User views Post Comments" do
  scenario "User sees all comments for a post" do
    post = FactoryGirl.create(:post)
    comment1 = FactoryGirl.create(:comment, post: post)
    comment2 = FactoryGirl.create(:comment, post: post)
    comment3 = FactoryGirl.create(:comment, post: post)

    visit post_path(post)

    expect(page).to have_content comment1.email
    expect(page).to have_content comment1.body

    expect(page).to have_content comment2.email
    expect(page).to have_content comment2.body

    expect(page).to have_content comment3.email
    expect(page).to have_content comment3.body
  end

  scenario "User doesn't see comments for another post" do
    post = FactoryGirl.create(:post)
    comment_for_other_post = FactoryGirl.create(:comment)

    visit post_path(post)

    expect(page).to_not have_content comment_for_other_post.email
    expect(page).to_not have_content comment_for_other_post.body
  end

  scenario "User sees a message telling them that there are no comments" do
    post = FactoryGirl.create(:post)

    visit post_path(post)

    expect(page).to have_content "There aren't any comments yet."
  end
end
