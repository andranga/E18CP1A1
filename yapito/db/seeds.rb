# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

20.times do |i|
	User.create(email: "usuario#{i+1}@yapito.com", password:'123456', name:"name#{i+1}")
end	

#Product.destroy_all

#20.times do |i|
#	Product.create(name:"Product_name#{i+1}", 
#		description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit, 
#		sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 
#		price: i*10000, sold: false)
#end	
