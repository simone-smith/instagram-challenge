# frozen_string_literal: true

require 'rails_helper.rb'

feature 'Posts are displayed on the index' do
  background do
    user = create(:user)
    photo_one = create(:photo, caption: "This is the first photo", user_id: 1)
    photo_two = create(:photo, caption: "This is the second photo", user_id: 1)
    sign_in_with user
  end

  scenario 'a user can view all posts on the index page' do
    expect(page).to have_content('This is the first photo')
    expect(page).to have_content('This is the second photo')
    expect(page).to have_css("img[src*='cat.jpg']")
  end
end
