require 'rails_helper'

RSpec.describe Photo, type: :model do
  before(:each) do
    @photo = create(:photo, caption: "This is a photo!")
  end

  let(:photo) { @photo }

  it 'a user can upload a photo' do
    expect(photo).to be_valid
  end

  it 'a caption should be present' do
    photo.caption = ""
    expect(photo).not_to be_valid
  end

  it 'an image should be present' do
    unless @photo.image.attached?
      expect(photo).not_to be_valid
    end
  end
end
