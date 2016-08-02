# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
veggies = Product.create(name: "Vegetables")
fruits = Product.create(name: "Fruits")
nuts = Product.create(name: "Nuts")
honey = Product.create(name: "Honey")
legumes = Product.create(name: "Legumes")
dairy = Product.create(name: "Dairy")
meat = Product.create(name: "Meat")
prepared_foods = Product.create(name: "Prepared Foods")

#================================================================================================================================================================================================================================================
#================================================================================================================================================================================================================================================

crop_rotation = Practice.create(name: "Crop Rotation", description: "The proccess of sowing a different crop family in each bed, plot, or row each season.")
certified_organic = Practice.create(name: "Certified Organic", description: "Organic is a labeling term for food or other agricultural products that have been
produced according to the USDA organic regulations. These standards require the
integration of cultural, biological, and mechanical practices that foster cycling of
resources, promote ecological balance, and conserve biodiversity. This means that organic
operations must maintain or enhance soil and water quality while also conserving wetlands,
woodlands, and wildlife. Synthetic fertilizers, sewage sludge, irradiation, and genetic engineering
may not be used. Source:USDA")
no_input = Practice.create(name: "Zero Input", description: "Describes a farm that uses less than 5% of it's materials from sources outside the farm or nearby farming community.")
biodynamic = Practice.create(name: "Byodynamic", description: "Describes a cultivation method based on the phases of the moon and recycled fertility.")
sustainable = Practice.create(name: "Sustainable", description: "A farm that produces more energy than it consumes, as well as having a net positive impact on CO2.")
no_till = Practice.create(name: "No Till", description: "Cultivating without turning the soil over (land may be tilled a couple of times when first prepping a plot for cultivation and still be considered no till).")
hydroponic = Practice.create(name: "Hydroponic", description: "The method of using non-soil growing mediums to cultivate crops.")
cover_crop = Practice.create(name: "Cover Cropping", description: "The method of growing crops to return fertility to the soil in between usual cash crops. Also helps in water retention and to prevent soil errosion.")
interplanting = Practice.create(name: "Interplanting", description: "The method of planting multiple plant families in the same row, bed, or plot. Increases soil fertility and helps defend against pests due to benificial relationships between plant families, but makes harvesting more difficult.")
mulching = Practice.create(name: "Mulching", description: "The method of covering soil rather than leaving it bare to protect the soil from sun exposure, increase water retention, and provide nutrients for soil microorganisms. (similar to cover-cropping)")
composting = Practice.create(name: "Composting", description: "The proccess ofusing discarded materials to create an ammendment added directly to the soil to increase fertility.")
bio_intensive = Practice.create(name: "Biointensive Cultivation", description: "The method of sowing crops closer than usual to maximize the production of a given plot of land.")
bio_diverse = Practice.create(name: "Biodiverse", description: "The principle of cultivating as many different species or plant families as possible in close proximity to each other.")
harvest_on_time = Practice.create(name: "Harvested on Time", description: "When crops are harvested at the appropriate time, rather than prematurely to extend shelf-life")
full_cycle = Practice.create(name: "Full Cycle Farming", description: "The proccess of reusing all fertility produced on the farm, including human excrement used in compost. (similar to zero-input)")
cover_crop_utilization = Practice.create(name: "Cover Crop Utilization", description: "The method of harvesting cover crops for consumption by humans or animals.")

#================================================================================================================================================================================================================================================
#================================================================================================================================================================================================================================================

csa = PurchaseOption.create(name: "CSA")
buying_club = PurchaseOption.create(name: "Buying Club")
cooperative = PurchaseOption.create(name: "Cooperative")
farm_stand = PurchaseOption.create(name: "Farm Stand")
farmers_market = PurchaseOption.create(name: "Farmer's Market")
restaurant = PurchaseOption.create(name: "Restaurant")

user1 = User.create(name: "JoJo", email:"jojo@jojo.com", password: "password", location:"600 w 51 terr miami beach fl 33140")
user2 = User.create(name: "Alison", email:"alison@jojo.com", password: "password", location:"120 sw 8 st miami fl")
user3 = User.create(name: "John", email:"john@jojo.com", password: "password", location:"
2520 NW 2nd Ave, Miami, FL 33127")
user4 = User.create(name: "Nizar", email:"nizar@jojo.com", password: "password", location:"5900 NE 1st Ave
Miami, FL 33137

")
user5 = User.create(name: "Gabe", email:"gabe@jojo.com", password: "password", location:"141 Center St, Jupiter, FL 33458")

farm1 = Farm.create(name: "Roots2River", description: "Small family owned farm in the Blue Ridge Mountains of North Carolina", address: "
150 NW 183rd St, Miami, FL 33169", user_id: 5)
farm2 = Farm.create(name: "In Pursuit of Food", description: "Production farm and agricultural research center nested only 40 minutes outside of NYC.", address: "
17800 Ipco Rd, Miami, FL 33162", user_id: 2)
farm3 = Farm.create(name: "Roots Rock Reggae", description: "Mulberry plantation in the heart of Jamaica", address: "
7770 Biscayne Blvd, Miami, FL 33138", user_id: 1)
