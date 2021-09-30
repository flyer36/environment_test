# location: spec/feature/published_date_integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid published date' do
        visit new_book_path
        fill_in 'Title', with: 'harry potter'
        fill_in 'Author', with: 'jk rowling'
        fill_in 'Price', with: '4.99'
        fill_in 'Published date', with: '09-20-2021'
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('09-20-2021')
    end
end