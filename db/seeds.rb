# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
felix = Host.create(name: 'Felix Chan', username: 'nexe', password:'123')
Renter.create(name: 'Felix Chan', username:'nexe')
Host.create(name: 'Will', username:'will', password:'123')
will = Renter.create(name: 'Will', username:'will')

Item.create(name:'pen', cost: '1', discription:'this is a pen, a good pen', image_url:'https://cdn3.volusion.com/hgrwp.cgupr/v/vspfiles/photos/1208-2.jpg?1484828253' , host:felix, renter:will)
