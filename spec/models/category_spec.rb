# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_categories_on_user_id  (user_id)
#
require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:user) { create(:user) }
  let(:name) { Faker::String.random(length: 3..12) }

  it 'With attributes valid of factory' do
    expect(FactoryBot.create(:category)).to be_valid
  end

  it 'With attributes valid' do
    expect(FactoryBot.create(:category, user: user, name: name)).to be_valid
  end

  it 'With attribute user nil' do
    expect(Category.new(user: nil, name: name)).not_to be_valid
  end

  it 'With attribute name blank' do
    expect(Category.new(user: user, name: '')).not_to be_valid
  end

  it 'With attribute name lenght 2 characters' do
    expect(Category.new(user: user, name: Faker::String.random(length: 2))).not_to be_valid
  end
end
