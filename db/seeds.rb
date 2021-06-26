# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([
  { username: 'test1', password: "test1" },
  { username: 'test2', password: "test2" },
])

Performance.create([
  { title: "Solo fire performance", summary: "awesome show", img: "https://i.imgur.com/YAPf3Dq.jpg", price: 200  },
  { title: "Solo fire performance 2", summary: "awesome show", img: "https://i.imgur.com/YAPf3Dq.jpg", price: 200  },
  { title: "Solo fire performance 3", summary: "awesome show", img: "https://i.imgur.com/YAPf3Dq.jpg", price: 200  },
  { title: "Solo fire performance 4", summary: "awesome show", img: "https://i.imgur.com/YAPf3Dq.jpg", price: 200  },
  { title: "Solo fire performance 5", summary: "awesome show", img: "https://i.imgur.com/YAPf3Dq.jpg", price: 200  },
  { title: "Solo fire performance 6", summary: "awesome show", img: "https://i.imgur.com/YAPf3Dq.jpg", price: 200  },
])

puts "Seeded database"