# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      'Rue Oberkampf, 75011 Paris',
    phone_number:  '01 47 05 11 10',
    category:   'Japanese'
  },
  {
    name:         'Fiorenza',
    address:      'Avenue des Champs-Elysées, 75008 Paris',
    phone_number:  '01 45 56 33 33',
    category:   'Italian'
  },
  {
    name:         'Xian wu',
    address:      '8 rue Saint Dominique, 75007 Paris',
    phone_number:  '01 45 56 27 17',
    category:   'Chinese'
  },
 {
    name:         'Brussels',
    address:      'avenue de Friendland, 75017 Paris',
    phone_number:  '01 44 00 00 00',
    category:   'Belgian'
  },
  {
    name:         'Tartuffe',
    address:      '10 rue du Commerce, 75015 Paris',
    phone_number:  '01 45 56 27 17',
    category:   'French'
  },
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
