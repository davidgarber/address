require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions ,false)

describe('the address path', {:type => :feature}) do
  it('adds and returns contact information') do
      visit('/address/new')
      fill_in('first_name', :with => 'Bob')
      fill_in('last_name', :with => 'Smith')
      fill_in('birth_month', :with => 'July')
      click_button ('Add Contact')
      expect(page).to have_content('Bob')

  end
end
