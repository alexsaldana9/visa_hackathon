# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: 'Erik', allergies: 'Eggs', DOB: '2007, 11, 10', budget: 100.00)

p1 = Product.create!(item: 'Sprout Organic Baby Food: Sweet Potato Apple Spinach', price: 1.59, allergens: 'Eggs', quantity: 100, image: 'https://www.images-iherb.com/l/SRT-01271-3.jpg')
p2 = Product.create!(item: 'Sprite', price: 0.50, allergens: 'N/A', quantity: 50, image: 'https://ui3.assets-asda.com/g/v5/492/127/54492127_280_IDShot_3.jpeg')
p3 = Product.create!(item: 'Plum Organics: Pear, Spinach & Pea', price: 1.99, allergens: 'Milk', quantity: 50, image: 'https://www.images-iherb.com/l/PLO-00119-7.jpg')

s1 = ShoppingCartItem.create!(prod_qty: 2, user_id: u1.id, product_id: p1.id)
