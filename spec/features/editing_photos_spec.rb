# frozen_string_literal: true

require 'rails_helper.rb'

feature 'Editing photos' do
  scenario 'a user can edit a photo' do
    photo = create(:photo)
    visit '/'
    click_link("Edit")
    fill_in 'photo[caption]', with: "This picture needs editing"
    click_button 'Update Photo'
    expect(page).to have_content("Photo was successfully updated")
    expect(page).to have_content("This picture needs editing")
  end
end
