# frozen_string_literal: true

# == Schema Information
#
# Table name: categories
#
#  id                 :bigint(8)        not null, primary key
#  categorizable_type :string
#  name               :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  categorizable_id   :bigint(8)
#
# Indexes
#
#  index_categories_on_categorizable_type_and_categorizable_id  (categorizable_type,categorizable_id)
#

FactoryBot.define do
  factory :category do
  end
end
