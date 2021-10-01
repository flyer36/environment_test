# location: spec/feature/published_date_integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid published date' do
        visit new_book_path
        fill_in 'Title', with: 'harry potter'
        fill_in 'Author', with: 'jk rowling'
        fill_in 'Price', with: 4.99
        select '2002', :from => 'book_published_date_1i'
        select 'September', :from => 'book_published_date_2i'
        select '19', :from => 'book_published_date_3i'
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('2002-09-19')
    end
end