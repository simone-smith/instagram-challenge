# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "photos/show", type: :view do
  before(:each) do
    @user = assign(:user, create(:user))
    @photo = assign(:photo, create(:photo, caption: "This is a photo!", user_id: 1))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/This is a photo!/)
  end
end
