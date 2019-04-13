# frozen_string_literal: true

class AddNameToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :name, :string, null: false, default: "Item"
    # Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
