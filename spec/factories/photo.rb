# frozen_string_literal: true

FactoryBot.define do
  factory :photo do
    caption "test"
    image Rack::Test::UploadedFile.new(Rails.root + 'spec/images/cat.jpg', 'image/jpg')
  end
end
