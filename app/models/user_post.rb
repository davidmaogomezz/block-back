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
class UserPost < ApplicationRecord
  belongs_to :user
  belongs_to :post
end
