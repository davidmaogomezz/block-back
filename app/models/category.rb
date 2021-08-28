class Category < ApplicationRecord
  # RELATIONS
  has_many :category_posts, dependent: :restrict_with_exception
  belongs_to :user
end
