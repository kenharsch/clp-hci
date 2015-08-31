# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name: 'Ken Harsch', nickname: 'Ken', email:'kharsch@brandeis.edu', password: 'swlipds12', admin: 'true')
User.create!(name: 'Maria Altebarmakian', nickname: 'Maria', email: 'maltebar@brandeis.edu', password: '12345678', admin: 'true')
User.create!(name: 'Rick Alterman', nickname: 'Rick', email: 'ralterma@brandeis.edu', password: '12345678', admin: 'true')
User.create!(name: 'Grader', nickname: 'Grader', email: 'grader@brandeis.edu', password: '12345678', admin: 'true')

Group.create(name: 'Group 1')
Group.create(name: 'Group 2')

Assignment.create(title: 'Nickname', description: 'Explain why you chose your nickname in a way that does not give away your real name!', due: '2015-09-01 24:00:00 UTC')

Notification.create(message: 'Welcome to HCI!', user_notified: '0')


