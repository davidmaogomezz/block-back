# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  title      :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:title) { Faker::String.random(length: 3) }
  let(:content) { Faker::String.random(length: 200) }

  it 'With attributes valid of factory' do
    expect(FactoryBot.create(:post)).to be_valid
  end

  it 'With attributes valid' do
    expect(FactoryBot.create(:post, title: title, content: content)).to be_valid
  end

  it 'With attribute title nil' do
    expect(Post.new(title: nil, content: content)).not_to be_valid
  end

  it 'With attribute content nil' do
    expect(Post.new(title: title, content: nil)).not_to be_valid
  end
end
