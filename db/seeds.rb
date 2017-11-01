# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Role.create(name: :admin)
Role.create(name: :manually)
user1 = User.create(username: 'vishal_admin',first_name: "vishal", last_name: "tyagi",
								    email: 'admin@gmail.com',
								    password: '123456',
								    password_confirmation: '123456')
user1.add_role(:admin)
user2 = User.create(username: 'vishal_manually',first_name: "vishal", last_name: "tyagi",
								    email: 'manual@gmail.com',
								    password: '123456',
								    password_confirmation: '123456')
user2.add_role(:manually)
