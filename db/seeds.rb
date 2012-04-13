# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([{name: 'Johhny'}])

Photo.create([{date_posted: '09/01/2011 17:00', rank: '5', title: 'Kick Ass', url: 'http://cdn1.static.mporatrons.com/photos/8sK7zLhV8u_m.jpg'}])
Photo.create([{date_posted: '08/01/2011 17:00', rank: '4', title: 'Really Nice', url: 'http://cdn1.static.mporatrons.com/photos/WbutfxQ3S8_m.jpg'}])
