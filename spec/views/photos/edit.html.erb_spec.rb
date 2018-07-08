# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "photos/edit", type: :view do
  before(:each) do
    @user = assign(:user, create(:user))
    @photo = assign(:photo, create(:photo, caption: "This is a photo!", user_id: 1))
  end

  it "renders the edit photo form" do
    render

    assert_select "form[action=?][method=?]", photo_path(@photo), "post" do

      assert_select "textarea[name=?]", "photo[caption]"
    end
  end
end
