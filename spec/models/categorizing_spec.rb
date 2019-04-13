# frozen_string_literal: true

# == Schema Information
#
# Table name: categorizings
#
#  id          :bigint(8)        not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint(8)
#  item_id     :bigint(8)
#
# Indexes
#
#  index_categorizings_on_category_id  (category_id)
#  index_categorizings_on_item_id      (item_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (item_id => items.id)
#

require 'rails_helper'

RSpec.describe Categorizing, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
