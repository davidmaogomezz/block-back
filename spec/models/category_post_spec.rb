# == Schema Information
#
# Table name: category_posts
#
#  id          :bigint           not null, primary key
#  category_id :bigint           not null
#  post_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_category_posts_on_category_id  (category_id)
#  index_category_posts_on_post_id      (post_id)
#
require 'rails_helper'

RSpec.describe CategoryPost, type: :model do
  it 'With attributes valid of factory' do
    expect(FactoryBot.create(:category_post)).to be_valid
  end

  it 'With category nil' do
    expect(CategoryPost.new(category: nil)).not_to be_valid
  end

  it 'With post nil' do
    expect(CategoryPost.new(post: nil)).not_to be_valid
  end
end
