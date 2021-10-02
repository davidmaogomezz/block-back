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
class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user, optional: true

  # VALIDATIONS
  validates :content, length: { minimum: 3,
                                too_short: '
                                The post title must be at least 3 characters long' }
end
