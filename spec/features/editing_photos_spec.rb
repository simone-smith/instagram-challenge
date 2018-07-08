# frozen_string_literal: true

require 'rails_helper.rb'

feature 'Editing photos' do
  background do
    photo = create :photo
    user = create :user
    sign_in_with user

    find(:xpath, "//a[contains(@href,'photos/2')]").click
    click_link 'Edit'
  end

  scenario 'a user can edit a photo' do
    fill_in 'photo[caption]', with: "This picture needs editing"
    click_button 'Update Photo'
    expect(page).to have_content("Photo was successfully updated")
    expect(page).to have_content("This picture needs editing")
  end
end
