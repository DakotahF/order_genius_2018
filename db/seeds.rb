jonathans = Restaurant.create!(
  name: "Jonathan's",
  phone: '(111) 222-3333'
)

sy_thai = Restaurant.create!(
  name: 'Sy Thai',
  phone: '(844) 828-8388'
)

slows = Restaurant.create!(
  name: "Slow's",
  phone: '(537) 994-3833'
)

MenuItem.create!([
  {
    restaurant: jonathans,
    name: 'Hot Dog',
    price: 300
  },
  {
    restaurant: jonathans,
    name: 'Chili Dog',
    price: 450
  },
  {
    restaurant: jonathans,
    name: 'Chicago Dog',
    price: 450
  },
  {
    restaurant: sy_thai,
    name: 'Pad Thai',
    price: 800
  },
  {
    restaurant: sy_thai,
    name: 'Drunken Noodle',
    price: 800
  },
  {
    restaurant: sy_thai,
    name: 'Egg Noodle',
    price: 800
  },
  {
    restaurant: slows,
    name: 'Pulled Pork',
    price: 1000
  },
  {
    restaurant: slows,
    name: 'Beef Brisket',
    price: 1200
  },
])
