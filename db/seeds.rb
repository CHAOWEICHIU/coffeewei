# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Menu.create(name: 'Expresso', price: 5)
Menu.create(name: 'Latte', price: 8)
Menu.create(name: 'Mac', price: 500)
Menu.create(name: 'Ipad', price: 250)
Menu.create(name: 'Ipod', price: 100)


User.create(name: 'Admin', email: 'admin@gmail.com', visibility: 2, password: 12345678)


User.create(name: 'Chiu', email: 'user_1@gmail.com', visibility: 1, password: 12345678)
	Order.create(user_id: 2, visibility: 1)
		Comment.create(order_id: 1, menu_id: 1, qty: 10)
		Comment.create(order_id: 1, menu_id: 4, qty: 2)
		Comment.create(order_id: 1, menu_id: 5, qty: 1)
	Order.create(user_id: 2, visibility: 2)
		Comment.create(order_id: 2, menu_id: 3, qty: 3)
		Comment.create(order_id: 2, menu_id: 4, qty: 2)
		Comment.create(order_id: 2, menu_id: 5, qty: 1)
	Order.create(user_id: 2, visibility: 3)
		Comment.create(order_id: 3, menu_id: 3, qty: 3)
		Comment.create(order_id: 3, menu_id: 4, qty: 2)
		Comment.create(order_id: 3, menu_id: 5, qty: 1)
	Order.create(user_id: 2, visibility: 1)
		Comment.create(order_id: 4, menu_id: 5, qty: 1)


User.create(name: 'Helen', email: 'user_2@gmail.com', visibility: 1, password: 12345678)
	Order.create(user_id: 3, visibility: 1)
		Comment.create(order_id: 5, menu_id: 1, qty: 5)
		Comment.create(order_id: 5, menu_id: 2, qty: 10)
		Comment.create(order_id: 5, menu_id: 3, qty: 10)
	Order.create(user_id: 3, visibility: 2)
		Comment.create(order_id: 6, menu_id: 1, qty: 5)
		Comment.create(order_id: 6, menu_id: 2, qty: 10)
		Comment.create(order_id: 6, menu_id: 3, qty: 10)
	Order.create(user_id: 3, visibility: 3)
		Comment.create(order_id: 7, menu_id: 1, qty: 10)
		Comment.create(order_id: 7, menu_id: 2, qty: 20)
		Comment.create(order_id: 7, menu_id: 3, qty: 30)
	Order.create(user_id: 3, visibility: 2)
		Comment.create(order_id: 8, menu_id: 2, qty: 20)
	Order.create(user_id: 3, visibility: 1)
		Comment.create(order_id: 9, menu_id: 2, qty: 20)






	