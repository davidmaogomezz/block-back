class Category < ApplicationRecord
  # RELATIONS
  has_many :category_posts, dependent: :restrict_with_exception
  belongs_to :user

  # VALIDATIONS
  validates :name, length: { minimum: 3,
                             too_short: 'The category name must be at least 3 characters long' }
end
