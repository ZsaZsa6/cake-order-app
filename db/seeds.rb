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
Tier.destroy_all
ronda = Customer.create(username: "ronda", password: 'pw', email: 'rdc@gmail.com')
order1 = Order.create(description: "birthday cake", customer_id: ronda.id)
cake1 = Cake.create(number_tiers: 1, title: "Birthday cake", order_id: order1.id)
tier1 = Tier.create(flavor: "chocolate", frosting: "vanilla", filling: "vanilla", size: 9, cake_id: cake1.id)
order2 = Order.create(description: "anniversary and birthday cakes", customer_id: ronda.id)
cake2 = Cake.create(number_tiers: 2, title: "Anniversary Cake", order_id: order2.id)
tier2 = Tier.create(flavor: "vanilla", frosting: "vanilla", filling: "strawberry", size: 12, cake_id: cake2.id)
tier3 = Tier.create(flavor: "cookies and cream", frosting: "vanilla", filling: "cookies and cream", size: 8, cake_id: cake2.id)

cake3 = Cake.create(number_tiers: 1, title: "4th Birthday Cake", order_id: order2.id)
tier4 = Tier.create(flavor: "strawberry", frosting: "strawberry", filling: "strawberry", size: 8, cake_id: cake3.id)

