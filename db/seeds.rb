# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#User.create!(email: 'ravi@os.com',
#            password: '123456',
#            password_confirmation: '123456',
#            admin: true)


Category.create!(heading: 'Stir Fry', body: "It's so good, dough!", display: true)
Category.create!(heading: 'Curry', body: 'We cannoli do so much in each vide', display: true)
Category.create!(heading: 'Desserts', body: 'Rock rails icecream', display: true)



6.times do |i|
  stir_fry = Product.new(
      name: 'Stir Fry',
      description: 'House special seasoning Sauce ',
      price: 10.99,
      catering: true,
      category: Category.find(1)
      )
  curry = Product.new(
      name: 'Curry',
      description: 'Red Green Yellow',
      price: 12.99,
      catering: true,
      category: Category.find(2)
    )

  dessert = Product.new(
      name: 'Desert',
      description: ' Sweet Chocolate Creamy Pastry with Ice Cream',
      price: 3.99,
      catering: true,
      category: Category.find(3)
    )

  stir_fry.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_pizza_image.jpg")
  curry.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_pasta_image.jpg")
  dessert.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_dessert_image.jpg")
  if i == 5
    stir_fry.featured = true
    curry.featured = true
    dessert.featured = true
  end
  stir_fry.save
  curry.save
  dessert.save
end
