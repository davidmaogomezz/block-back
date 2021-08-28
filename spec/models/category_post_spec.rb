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
  pending "add some examples to (or delete) #{__FILE__}"
end
