# == Schema Information
#
# Table name: user_posts
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  post_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_user_posts_on_post_id  (post_id)
#  index_user_posts_on_user_id  (user_id)
#
require 'rails_helper'

RSpec.describe UserPost, type: :model do
  it 'With attributes valid of factory' do
    expect(FactoryBot.create(:user_post)).to be_valid
  end

  it 'With attributes valid of factory' do
    expect(UserPost.new(user: nil)).not_to be_valid
  end

  it 'With attributes valid of factory' do
    expect(UserPost.new(post: nil)).not_to be_valid
  end
end
