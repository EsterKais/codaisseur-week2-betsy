Photo.delete_all
Profile.delete_all
Product.delete_all
User.delete_all

photo1 = Photo.create(remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1476367423/Betsy/CowSelfie.jpg")
photo2 = Photo.create(remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1476367423/Betsy/CowFancy.jpg")
photo3 = Photo.create(remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1476367423/Betsy/CowBrown.jpg")
photo4 = Photo.create(remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1476367422/Betsy/CowsBrown.jpg")
photo5 = Photo.create(remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1476367423/Betsy/CowYoungBrown.jpg")
photo6 = Photo.create(remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1476367424/Betsy/CowPossibleHeader.jpg")

lauraprof = Profile.create(first_name:"Laura", last_name:"de la Rie", bio: "I love cows")
joshaprof = Profile.create(first_name:"Josha", last_name:"Grin", bio: "I love cows, too")
jeffprof = Profile.create(first_name:"Jeffrey", last_name:"Meesters", bio: "I f%^&* love cows")
esterprof = Profile.create(first_name:"Ester", last_name:"Kais", bio: "I really love cows")


laura = User.create(email: "laura@betsy.com", password: "secret", profile: lauraprof)
josha = User.create(email: "josha@betsy.com", password: "secret", profile: joshaprof)
jeff = User.create(email: "jeff@betsy.com", password: "secret", profile: jeffprof)
ester = User.create(email: "ester@betsy.com", password: "secret", profile: esterprof)

betsy = Product.create(name: "Betsy", amount: 1, race: "Texas Longhorn", description: "This is THE Betsy!", price: 200, color: "Brown", age: 5, gender: "female", edible: false, country_origin: "Europe", user: laura, photos: [photo5])
bully = Product.create(name: "Bully", amount: 1, race: "Angus Cattle", description: "Angus cattle, known as Aberdeen Angus in most parts of the world, are a breed of cattle commonly used in beef production. ", price: 350, color: "Brown", age: 7, gender: "Male", edible: true, country_origin: "Europe", user: jeff, photos: [photo2])
darla = Product.create(name: "Darla", amount: 1, race: "Holstein Friesian", description: "Holstein Friesians (often shortened as Friesians in Europe, and Holsteins in North America) are a breed of dairy cattle originating from the Dutch provinces of North Holland and Friesland, and what is now Schleswig-Holstein in Northern Germany. They are known as the world's highest-production dairy animals.", price: 500, color: "White", age: 5, gender: "female", edible: false, country_origin: "Europe", user: laura, photos: [photo1])
molly = Product.create(name: "Molly", amount: 1, race: "Gelbvieh", description: "Gelbvieh, German for yellow cattle is a cattle breed originating in several Franconian districts of Bavaria, Germany in the mid-18th century. Gelbvieh were originally known as “red-yellow Franconian cattle” and were developed from several local breeds. Gelbviehs were originally bred to be triple purpose cattle (used for milk, beef, and draught), but the modern Gelbvieh is primarily used for beef production.", price: 300, color: "Brown", age: 7, gender: "Female", edible: true, country_origin: "Latino", user: ester, photos: [photo4])
rex = Product.create(name: "Rex", amount: 1, race: "Texas Longhorn", description: "What a cow", price: 800, color: "Brown", age: 5, gender: "female", edible: false, country_origin: "North-America", user: laura, photos: [photo6])
damian = Product.create(name: "Damian", amount: 1, race: "Angus Cattle", description: "Seriously awesome cow", price: 350, color: "Brown", age: 7, gender: "Male", edible: true, country_origin: "Latino", user: jeff, photos: [photo3])
many = Product.create(name: "Many", amount: 16, race: "Holstein Friesian", description: "Super delicious on a burger", price: 150, color: "White", age: 5, gender: "female", edible: true, country_origin: "Asia", user: laura)
klara = Product.create(name: "Klara", amount: 1, race: "Gelbvieh", description: "Well..", price: 450, color: "Brown", age: 7, gender: "Female", edible: true, country_origin: "Asia", user: ester)
