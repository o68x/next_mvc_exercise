# frozen_string_literal: true

Category.create!(name: "That's fine")

Category.create!(name: "Well")

Category.create!(name: "Just a category")

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
  p "ITEM #{i} : créé"
end

Admin.create(
  email: 'mvc@yopmail.com',
  password: 'password',
  password_confirmation: 'password',
)
