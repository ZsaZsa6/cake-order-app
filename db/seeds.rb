# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Customer.destroy_all
Cake.destroy_all
Order.destroy_all
ronda = Customer.create(username: "ronda", password: 'pw', email: 'rdc@gmail.com')
cake1 = Cake.create(tiers: 1, flavors: "chocolate", fillings: "cookies and cream", frosting: "vanilla", size: 9,)
order1 = Order.create(description: "birthday cake", customer_id: ronda.id, cake_id: cake1.id)

