require 'rails_helper'

RSpec.describe "photos/show", type: :view do
  before(:each) do
    @photo = assign(:photo, create(:photo, caption: "This is a photo!"))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/This is a photo!/)
  end
end
