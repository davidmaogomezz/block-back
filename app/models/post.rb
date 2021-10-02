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
class Post < ApplicationRecord
  # RELATIONS
  has_many :category_posts, dependent: :restrict_with_exception
  has_many :user_posts, dependent: :restrict_with_exception
  has_many :comments, dependent: :restrict_with_exception

  # VALIDATIONS
  validates :title, length: { minimum: 3,
                              too_short: '
                                The post title must be at least 3 characters long' }

  validates :content, length: { minimum: 200,
                                too_short: '
                                  The post content must be at least 200 characters long' }
end
