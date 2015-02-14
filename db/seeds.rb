# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
File.open('./data/TestDatabase.csv', 'r').lines do |l|
  print l
  parts = l.split(',')
  Pedal.create!(
    name:      parts[0], 
    min_price: parts[1].sub('$', ''),
    max_price: parts[2].sub('$', '')
  )
end
