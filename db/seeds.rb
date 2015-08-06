# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
o1 = Owner.create(firstname: "Peter", lastname:"Parker", summary:"I love swinging with my dog webs")
	 Pet.create(name:"Webs", species:"spider", breed:"Daddy Long Legs", description:"Huge", owner_id: o1.id)

o2 = Owner.create(firstname:"Bruce", lastname:"Wayne", summary:"Bats are cool!")
	 Pet.create(name:"Ace", species:"Dog", breed:"Hound", description:"Black", owner_id: o2.id)
