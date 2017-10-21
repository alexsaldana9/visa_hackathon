# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create(name: 'Erik', allergies: 'Eggs', DOB: '2007, 11, 10', budget: 100.00)

p1 = Product.create!(item: 'Sprout Organic Baby Food: Sweet Potato Apple Spinach', price: 1.59, allergens: 'Eggs', quantity: 100, image: 'https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwif6rWds4LXAhVIxCYKHZizDnUQjRwIBw&url=https%3A%2F%2Fwww.iherb.com%2Fpr%2FSprout-Organic-Baby-Food-Stage-2-Sweet-Potato-Apple-Spinach-5-Pouches-4-oz-113-g-Each%2F77782&psig=AOvVaw2Xzk_Zw_kBNT9ymSggnSs1&ust=1508698820930512')
p2 = Product.create!(item: 'Sprite', price: 0.50, allergens: 'N/A', quantity: 50, image: 'https://ui3.assets-asda.com/g/v5/492/127/54492127_280_IDShot_3.jpeg')
p3 = Product.create!(item: 'Plum Organics: Pear, Spinach & Pea', price: 1.99, allergens: 'Milk', quantity: 50, image: 'https://www.images-iherb.com/l/PLO-00119-7.jpg')


