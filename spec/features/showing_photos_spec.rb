# frozen_string_literal: true

require 'rails_helper.rb'

feature 'Viewing individual posts' do
  scenario 'a user can view an individual post' do
    photo = create(:photo)
    id = photo.id
    visit '/'
    click_link("Show")
    expect(page.current_path).to eq('/photos/' + id.to_s)
  end
end
