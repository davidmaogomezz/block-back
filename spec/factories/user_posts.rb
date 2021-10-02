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
FactoryBot.define do
  factory :user_post do
    user { FactoryBot.create(:user) }
    post { FactoryBot.create(:post) }
  end
end
