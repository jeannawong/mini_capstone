# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#PRODUCTS SEED
Product.create(name: "Crash", price: 15, image_url: "http://www.squee.com/wp-content/uploads/2016/10/2557702503.jpg", description: "Beautiful cat pet rock", quantity: 100, supplier_id: 3)

Product.create(name: "Ladybug", price: 15, image_url: "https://www.thecrafttrain.com/wp-content/uploads/2013/03/garden-bugs-3.jpg", description: "A beautiful ladybug pet rock", quantity: 75, supplier_id: 3)

Product.create(name: "Unicorn", price: 25, image_url: "https://i.pinimg.com/originals/3b/5a/ae/3b5aae42c8834a159822b21bfb00066c.jpg", description: "A beautiful unicorn pet rock", quantity: 50, supplier_id: 3)

Product.create(name: "Person", price: 9, image_url: "https://images-na.ssl-images-amazon.com/images/I/81qrQKsC85L.png", description: "A person pet rock", quantity: 110, supplier_id: 4)

Product.create(name: "Valentine", price: 20, image_url: "https://scontent-ort2-2.xx.fbcdn.net/v/t1.0-9/86392931_2571040063007026_8141481470188322816_n.jpg?_nc_cat=111&ccb=2&_nc_sid=730e14&_nc_ohc=OHy9r5O5WZQAX8_Ot4X&_nc_ht=scontent-ort2-2.xx&oh=31116395c52d3c25047881be19e48540&oe=602A0959", description: "Valentine's themed pet rock", quantity: 25, supplier_id: 4)

Product.create(name: "Flower", price: 10, image_url: "https://i.etsystatic.com/17509734/r/il/a75070/1480105432/il_1588xN.1480105432_toq9.jpg", description: "A beautiful flower pet rock", quantity: 100, supplier_id: 4)

#SUPPLIERS SEED

#IMAGES SEED
Image.create(url: "http://www.squee.com/wp-content/uploads/2016/10/2557702503.jpg", product_id: 1)

Image.create(url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/7fc0568d-feac-4ae9-8df5-95c9251be003/d1q3k9u-19c401ea-bd1c-434b-8938-ca44d0924697.jpg/v1/fill/w_600,h_492,q_75,strp/pet_rock____by_rockgem_d1q3k9u-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvN2ZjMDU2OGQtZmVhYy00YWU5LThkZjUtOTVjOTI1MWJlMDAzXC9kMXEzazl1LTE5YzQwMWVhLWJkMWMtNDM0Yi04OTM4LWNhNDRkMDkyNDY5Ny5qcGciLCJoZWlnaHQiOiI8PTQ5MiIsIndpZHRoIjoiPD02MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uud2F0ZXJtYXJrIl0sIndtayI6eyJwYXRoIjoiXC93bVwvN2ZjMDU2OGQtZmVhYy00YWU5LThkZjUtOTVjOTI1MWJlMDAzXC9yb2NrZ2VtLTQucG5nIiwib3BhY2l0eSI6OTUsInByb3BvcnRpb25zIjowLjQ1LCJncmF2aXR5IjoiY2VudGVyIn19.g9l_oC16XXczPbECxpbEncC-Y9zDJSvKrQMpeYL0jaE", product_id: 1)

Image.create(url: "https://i.pinimg.com/236x/69/a2/e0/69a2e0ad4d4d87f541002402d7facccb--owl-rocks-rock-animals.jpg", product_id: 1)

Image.create(url: "https://i.pinimg.com/originals/3b/5a/ae/3b5aae42c8834a159822b21bfb00066c.jpg", product_id: 6)

Image.create(url: "https://colormadehappy.com/wp-content/uploads/2018/08/Painted-Unicorn-Rocks.jpg", product_id: 6)

Image.create(url: "https://i.etsystatic.com/17509734/r/il/a75070/1480105432/il_1588xN.1480105432_toq9.jpg", product_id: 3)

Image.create(url: "https://www.thecrafttrain.com/wp-content/uploads/2013/03/garden-bugs-3.jpg", product_id: 4)

Image.create(url: "https://scontent-ort2-2.xx.fbcdn.net/v/t1.0-9/86392931_2571040063007026_8141481470188322816_n.jpg?_nc_cat=111&ccb=2&_nc_sid=730e14&_nc_ohc=OHy9r5O5WZQAX8_Ot4X&_nc_ht=scontent-ort2-2.xx&oh=31116395c52d3c25047881be19e48540&oe=602A0959", product_id: 5)

Image.create(url: "https://images-na.ssl-images-amazon.com/images/I/81qrQKsC85L.png", product_id: 7)
