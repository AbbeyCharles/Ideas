# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name:"Abbey Charles", alias:"Mountain Wifey", email:"abbey@gmail.com", password:"asdfasdf")
User.create(name:"Chris Lovell", alias:"Festus Blowtorch", email:"chris@gmail.com", password:"asdfasdf")
User.create(name:"Jess Bradley", alias:"Tiny Human", email:"jess@gmail.com", password:"asdfasdf")
User.create(name:"Sarah Overbeck", alias:"Yellow Bird", email:"sarah@gmail.com", password:"asdfasdf")
User.create(name:"Chaz Ford", alias:"Uncle Fester", email:"chaz@gmail.com", password:"asdfasdf")

Idea.create(content:"Let's build a wall around the White House so Donald Trump can't get out.", user_id:1)
Idea.create(content:"We need amachine that creates insane amounts of ice so I can ice my neighbor's driveway.", user_id:2)
Idea.create(content:"What if there was a website where you can barter for goods and services, no money exchanged?", user_id:3)
Idea.create(content:"We should build a compound in Glenwood Springs where everyone can be mountain hippies together.", user_id:4)
Idea.create(content:"A subscription box service that delivers beer and a pint glass every month.", user_id:5)
