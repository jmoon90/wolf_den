require 'spec_helper'

feature 'Sign out' do
  given!(:user) { FactoryGirl.create(:user) }

  scenario 'signs people out' do
    sign_in_as(user)
    within('.delete_user_session') do
      click_on 'Sign out'
    end
    expect(page).to have_content 'Signed out successfully.'
  end

  def sign_in_as(user)
    visit user_session_path
    fill_in 'Email', with: 'jmoon90@aol.com'
    fill_in 'Password', with: 'applepie'
    click_button 'Sign in'
  end
end
