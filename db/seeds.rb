# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name: 'Rick Alterman', nickname: 'Rick', email: 'alterman@brandeis.edu', password: 'password', admin: 'true')
User.create!(name: 'Ken Harsch', nickname: 'Ken', email:'kharsch@brandeis.edu', password: 'swlipds12', admin: 'true')
User.create!(name: 'Tiffany Chen', nickname: 'Starbuck', email: 'tchen7@brandeis.edu', password: 'password', admin: 'true')
User.create!(name: 'Alexis Perry', nickname: 'Number 6', email: 'apwinkle@brandeis.edu', password: 'password', admin: 'true')
User.create!(name: 'Ethan Stein', nickname: 'Gaius', email: 'steine@brandeis.edu', password: 'password', admin: 'true')
User.create!(name: 'Bryan Turcotte', nickname: 'Apollo', email: 'bdturc@brandeis.edu', password: 'password', admin: 'true')
User.create!(name: 'Shraddha Basnyat', nickname: 'Boomer', email: 'sbasnyat@brandeis.edu', password: 'password', admin: 'true')


Group.create(name: 'Team Einstein')
Group.create(name: 'Team Turing')
Group.create(name: 'Team Copernicus')
Group.create(name: 'Team Heisenberg')
Group.create(name: 'Team Faraday')
Group.create(name: 'Team Chandrasekhar')
Group.create(name: 'Team Archimedes')
Group.create(name: 'Team Pythagoras')
Group.create(name: 'Team Pascal')
Group.create(name: 'Team Ramanujan')
Group.create(name: 'Team Fossey')
Group.create(name: 'Team Curie')
Group.create(name: 'Team Tesla')
Group.create(name: 'Team Murray')
Group.create(name: 'Team Whiting')
Group.create(name: 'Team Nightingale')
Group.create(name: 'Team Wu')
Group.create(name: 'Team Hawking')
Group.create(name: 'Team Oppenheimer')
Group.create(name: 'Team Edison')





