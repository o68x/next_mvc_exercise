# frozen_string_literal: true

class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      # Make it a polymorphic association, because why not?
      t.references :categorizable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
