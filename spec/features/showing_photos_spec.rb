require 'rails_helper.rb'

feature 'Viewing individual posts' do
  scenario 'a user can view an individual post' do
    photo_one = create(:photo)
    visit '/'
    click_link("Show")
    expect(page.current_path).to include('/photos/')
  end
end
