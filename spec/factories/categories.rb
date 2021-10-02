# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_categories_on_user_id  (user_id)
#
FactoryBot.define do
  factory :category do
    user { FactoryBot.create(:user) }
    name { Faker::String.random(length: 3..12).gsub("\u0000", '') }
  end
end
