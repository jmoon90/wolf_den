require 'spec_helper'

feature "User adds a new post" do

  scenario "User fills out form with valid information" do 
    visit new_post_path # '/posts/new'
    fill_in "Title", with: "John the Wolf"
    fill_in "Content", with: "Drinks tea while surfing MySpace.com!"
    click_on "Save"
    expect(page).to have_content "Post saved successfully."
  end

end
