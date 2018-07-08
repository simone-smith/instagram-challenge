# frozen_string_literal: true

require 'rails_helper.rb'

feature 'Posts are displayed on the index' do
  background do
    photo_one = create(:photo, caption: "This is the first photo")
    photo_two = create(:photo, caption: "This is the second photo")
    user = create :user
    sign_in_with user
  end

  scenario 'a user can view all posts on the index page' do
    expect(page).to have_content('This is the first photo')
    expect(page).to have_content('This is the second photo')
    expect(page).to have_css("img[src*='cat.jpg']")
  end
end
