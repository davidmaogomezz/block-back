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
FactoryBot.define do
  factory :post do
    title { Faker::String.random(length: 3).gsub("\u0000", '') }
    content { Faker::String.random(length: 300).gsub("\u0000", '') }
  end
end
