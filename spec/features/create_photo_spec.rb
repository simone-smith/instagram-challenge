# frozen_string_literal: true

require 'rails_helper.rb'

feature 'Create posts' do
  background do
    user = create :user
    sign_in_with user
  end

  scenario 'a user can create a post' do
    visit '/photos/new'
    attach_file('photo[image]', "spec/images/cat.jpg")
    fill_in 'photo[caption]', with: 'Cute cat, obviously - this is Instagram after all'
    click_button 'Create Photo'
    expect(page).to have_content('Cute cat, obviously - this is Instagram after all')
    expect(page).to have_css("img[src*='cat.jpg']")
  end
end
