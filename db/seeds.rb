# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
veggies = Product.create(name: "Vegetbales")
fruits = Product.create(name: "Fruits")
nuts = Product.create(name: "Nuts")
honey = Product.create(name: "Honey")
legumes = Product.create(name: "Legumes")
dairy = Product.create(name: "Dairy")
meat = Product.create(name: "meat")

#================================================================================================================================================================================================================================================
#================================================================================================================================================================================================================================================

crop_rotation = Practice.create(name: "Crop Rotation", description: "Crop rotation is the practice of growing a series of dissimilar or different types of crops in the same area
 in sequenced seasons.It is done so that the soil of farms is not used to only one type of nutrient. It helps in reducing soil erosion and increases soil fertility and crop yield. Source:Wikipedia")
certified_organic = Practice.create(name: "Certified Organic", description: "Organic is a labeling term for food or other agricultural products that have been
produced according to the USDA organic regulations. These standards require the
integration of cultural, biological, and mechanical practices that foster cycling of
resources, promote ecological balance, and conserve biodiversity. This means that organic
operations must maintain or enhance soil and water quality while also conserving wetlands,
woodlands, and wildlife. Synthetic fertilizers, sewage sludge, irradiation, and genetic engineering
may not be used. Source:USDA")
low_input = Practice.create(name: "Low Input", description: "Low input farming systems 'seek to optimize the management and use of internal production inputs (i.e. on-farm resources)... 
and to minimize the use of production inputs (i.e. off-farm resources), such as purchased fertilizers and pesticides, wherever and whenever feasible and practicable, to lower production costs,
to avoid pollution of surface and groundwater, to reduce pesticide residues in food, to reduce a farmer's overall risk, and to increase both short- and long-term farm profitability.' [JF Parr et al.,
'Sustainable Agriculture in the United States,' in Sustainable Agricultural Systems, ed. by Clive A. Edwards, et al. (Ankeny IA: Soil and Water Conservation Society, 1990), p. 52. NAL Call # S494.5 S86S86]")
aquaponic = Practice.create(name: "Aquaponic", description: "Aquaponics /ˈækwəˈpɒnᵻks/, refers to any system that combines conventional aquaculture (raising aquatic animals such as snails, fish, crayfish or prawns in tanks)
with hydroponics (cultivating plants in water) in a symbiotic environment. In normal aquaculture, excretions from the animals being raised can accumulate in the water, increasing toxicity. In an aquaponic system, water from 
an aquaculture system is fed to a hydroponic system where the by-products are broken down by Nitrifying bacteria into nitrates and nitrites, which are utilized by the plants as nutrients, and the water is then recirculated back to the aquaculture system.")
hydroponic = Practice.create(name: "Hydroponic", description: "the cultivation of plants by placing the roots in liquid nutrient solutions rather than in soil; soilless growth of plants.")

#================================================================================================================================================================================================================================================
#================================================================================================================================================================================================================================================

csa = PurchaseOption.create(name: "CSA")
buying_club = PurchaseOption.create(name: "Buying Club")
cooperative = PurchaseOption.create(name: "Cooperative")
farm_stand = PurchaseOption.create(name: "Farm Stand")
farmers_market = PurchaseOption.create(name: "Farmer's Market")
restaurant = PurchaseOption.create(name: "Restaurant")

user1 = User.create(name: "JoJo", email:"jojo@jojo.com", password: "password", location:"Jamaica")
user2 = User.create(name: "Alison", email:"alison@jojo.com", password: "password", location:"New York")
user3 = User.create(name: "John", email:"john@jojo.com", password: "password", location:"Houston")
user4 = User.create(name: "Nizar", email:"nizar@jojo.com", password: "password", location:"Narnia")
user5 = User.create(name: "Gabe", email:"gabe@jojo.com", password: "password", location:"Fayetteville")

farm1 = Farm.create(name: "Roots2River", description: "Small family owned farm in the Blue Ridge Mountains of North Carolina", user_id: 5)
farm2 = Farm.create(name: "In Pursuit of Food", description: "Production farm and agricultural research center nested only 40 minutes outside of NYC.", user_id: 2)
farm3 = Farm.create(name: "Roots Rock Reggae", description: "Mulberry plantation in the heart of Jamaica", user_id: 1)
