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
require 'rails_helper'

RSpec.describe Category, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
