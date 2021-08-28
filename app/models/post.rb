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
end
