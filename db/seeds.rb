# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
car1 = Car.create(year: 2012, make:"BMW", model: "M3")
parts2 = Part.create!(name: 'Ignition Coil', OE_number: '0986221059', line_code: "BOS", price:75, UPC:"0245841235458", image_url: 'https://c1552172.ssl.cf0.rackcdn.com/1004286_x300.jpg', weight: 1, car_id: 1)
parts3 = Part.create(name: 'Spark plug', OE_number: '4471', line_code: "NGK", price: 20, UPC:"15482468547", image_url: 'https://i.ebayimg.com/images/g/5s4AAOSw9N1Vq0aU/s-l300.jpg', weight:1, car_id: 1)
parts4 = Part.create(name: 'ALTERNATOR', OE_number: '439675', line_code: "VAL", price: 250, UPC:"54782566984", image_url: 'https://images.oreillyauto.com/parts/img/medium/ost/r110396a_ang.jpg', weight: 12, car_id: 1)
parts5 = Part.create!(name: 'Radiator', OE_number: '1502085-CF-7059', line_code: "BMW", price: 800, UPC:"0245841238458", image_url: 'https://www.autohausaz.com/images/CF-7059.jpg', weight: 15, car_id: 1)
parts6 = Part.create(name: 'Camshaft sensor', OE_number: '13627837904', line_code: "BMW", price: 75 , UPC:"15952468547", image_url: 'https://www.autohausaz.com/images/OE-13627837904.jpg', weight:1, car_id: 1)
parts7 = Part.create(name: 'AC Compressor', OE_number: '470-5148', line_code: "DSO", price: 650, UPC:"54782566144", image_url: 'https://smhttp-ssl-69129-sixityauto.nexcesscdn.net/pub/media/catalog/product/cache/75eed2686e01eb22cb4050b2f40ddf97/2/0/2056030122image1.jpg', weight: 12, car_id: 1)

orderstatus1=OrderStatus.create( id: 1, name: "In Progress")
orderstatus2=OrderStatus.create( id: 2, name: "Placed")
orderstatus3=OrderStatus.create( id: 3, name: "Shipped")
orderstatus4=OrderStatus.create( id: 4, name: "Cancelled")
