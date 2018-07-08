# frozen_string_literal: true

require 'rails_helper.rb'

feature 'Viewing individual posts' do
  background do
    user = create :user
    photo = create :photo
    visit '/'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
  end

  scenario 'a user can view an individual post' do
    find(:xpath, "//a[contains(@href,'photos/3')]").click
    expect(page.current_path).to eq(photo_path(3))
  end
end
