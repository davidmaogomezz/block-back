# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  post_id    :bigint           not null
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  content    :string
#
# Indexes
#
#  index_comments_on_post_id  (post_id)
#  index_comments_on_user_id  (user_id)
#
require 'rails_helper'

RSpec.describe Comment, type: :model do
  it 'With attributes valid of factory' do
    expect(FactoryBot.create(:comment)).to be_valid
  end

  it 'With user nil' do
    expect(Comment.new(user: nil)).not_to be_valid
  end

  it 'With post nil' do
    expect(Comment.new(post: nil)).not_to be_valid
  end

  it 'With content nil' do
    expect(Comment.new(content: nil)).not_to be_valid
  end

  it 'With content length 2 characteres' do
    expect(Comment.new(content: Faker::String.random(length: 2).gsub("\u0000", ''))).not_to be_valid
  end
end
