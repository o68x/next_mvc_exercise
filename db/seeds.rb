# frozen_string_literal: true

Category.create!(name: "Good")

Category.create!(name: "Bad")

1.upto(20) do |i|
  item = Item.create!(
    name: Faker::Artist.name,
    original_price: Faker::Number.decimal(2),
    has_discount: Faker::Boolean.boolean
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
