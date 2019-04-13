# frozen_string_literal: true

# == Schema Information
#
# Table name: categories
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ApplicationRecord
  has_many :categorizings,
           dependent: :destroy

  has_many :items,
           through: :categorizings,
           dependent: :destroy
end
