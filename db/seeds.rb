User.delete_all

laura = User.create(email: "laura@betsy.com", password: "secret")
josha = User.create(email: "josha@betsy.com", password: "secret")
jeff = User.create(email: "jeff@betsy.com", password: "secret")
ester = User.create(email: "ester@betsy.com", password: "secret")

betsy = Product.create(name: "Betsy", amount: 1, race: "Texas Longhorn", description: "This is THE Betsy!", price: 200, color: "Brown", age: 5, gender: "female", edible: false, country_origin: "The Netherlands", user: laura)
