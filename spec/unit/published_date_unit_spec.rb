require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'jk rowling', price: 4.99, published_date: '2002-09-19')
  end

  it 'has a valid published date' do
    expect(subject).to be_valid
  end

  it 'is not valid without a published date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end