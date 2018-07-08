# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :photos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "photos#index"
end
