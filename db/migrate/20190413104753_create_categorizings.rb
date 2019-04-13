# frozen_string_literal: true

class CreateCategorizings < ActiveRecord::Migration[5.2]
  def change
    create_table :categorizings do |t|
      t.references :category, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
