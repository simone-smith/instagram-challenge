require 'rails_helper.rb'

feature 'Posts are displayed on the index' do
  scenario 'a user can view all posts on the index page' do
    photo_one = create(:photo, caption: "This is the first photo")
    photo_two = create(:photo, caption: "This is the second photo")
    visit '/'
    expect(page).to have_content('This is the first photo')
    expect(page).to have_content('This is the second photo')
    expect(page).to have_css("img[src*='cat.jpg']")
  end
end
