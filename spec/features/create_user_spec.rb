require 'rails_helper'

feature 'Creating a new user' do
  background do
    visit '/'
    click_link 'Register'
  end
  scenario 'can create a new user via the index page' do
    fill_in 'User name', with: 'Simone'
    fill_in 'Email', with: 'simone@email.com'
    fill_in 'Password', with: 'mypassword', match: :first
    fill_in 'Password confirmation', with: 'mypassword'

    click_button 'Sign up'
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end

  scenario 'requires a user name to successfully create an account' do
    fill_in 'Email', with: 'simone@email.com'
    fill_in 'Password', with: 'mypassword', match: :first
    fill_in 'Password confirmation', with: 'mypassword'

    click_button 'Sign up'
    expect(page).to have_content("can't be blank")
  end

  scenario 'requires a user name to be more than 4 characters' do
    fill_in 'User name', with: 's'
    fill_in 'Email', with: 'simone@email.com'
    fill_in 'Password', with: 'mypassword', match: :first
    fill_in 'Password confirmation', with: 'mypassword'

    click_button 'Sign up'
    expect(page).to have_content('minimum is 4 characters')
  end

  scenario 'requires a user name to be less than 16 characters' do
    fill_in 'User name', with: 's' * 17
    fill_in 'Email', with: 'simone@email.com'
    fill_in 'Password', with: 'mypassword', match: :first
    fill_in 'Password confirmation', with: 'mypassword'

    click_button 'Sign up'
    expect(page).to have_content("maximum is 16 characters")
  end
end
