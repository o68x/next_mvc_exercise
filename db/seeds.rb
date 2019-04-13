# frozen_string_literal: true

Category.create!(name: "First")

Category.create!(name: "Second")

Category.create!(name: "Last")

1.upto(20) do |i|
  item = Item.create!(
    name: Faker::Artist.name,
    original_price: Faker::Number.decimal(2),
    has_discount: Faker::Boolean.boolean,
    categories: [Category.all.sample]
  )
  if item.has_discount
    item.discount_percentage = (1..10).to_a.sample * 5
    item.save
  end
  p "Item #{i} créé"
end

admin = Admin.new(
  email: 'mvc@yopmail.com',
  password: 'password',
  password_confirmation: 'password'
)
admin.skip_confirmation!
admin.save!

user = User.new(
  email: 'user@yopmail.com',
  password: 'password',
  password_confirmation: 'password'
)
user.skip_confirmation!
user.save!
