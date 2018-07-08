# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "photos/index", type: :view do

  before(:each) do
    assign(:photos, [
      @photo = create(:photo, caption: "This is a photo!"),
      @photo = create(:photo, caption: "This is a photo!")
    ])
  end

  it "renders a list of photos" do
    render
    assert_select "p", text: "This is a photo!".to_s, count: 2
  end
end
