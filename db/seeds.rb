# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 
User.destroy_all
WeighIn.destroy_all
Comment.destroy_all
Friendship.destroy_all
puts "Destroyed all Users, Weigh-ins, Comments, and Friendships."

I18n.enforce_available_locales = false

users = [
  {name: "Ariel", email: 'ariel@themakersquare.com', profilepic: 'http://upload.wikimedia.org/wikipedia/en/3/31/Ariel_mermaid.jpg', startweight: 107, desiredweight: 107, bio: 'Not really trying to lose weight, just trying to get legs.  Friend me if you have advice.'},
  {name: "Ursula", email: 'ursula@themakersquare.com', profilepic: 'http://upload.wikimedia.org/wikipedia/en/thumb/a/ab/UrsulaTheLittleMermaid.jpg/200px-UrsulaTheLittleMermaid.jpg', startweight: 345, desiredweight: 250, bio: "Put on a bunch of weight back in the early 90s.  Trying to get fit and turn my life around!  Tired of all the manatee jokes."},
  {name: "Gaston", email: 'gaston@themakersquare.com', profilepic: 'http://thewiseguise.com/wp-content/uploads/2012/03/GastonVillain.jpg', startweight: 227, desiredweight: 225, bio: 'Here for emotional support.  Been trying to lose those last couple percentage points of body fat for years.  I secretly hate myself.'},
  {name: "Pumba", email: 'pumba@themakersquare.com', profilepic: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQnYOa3Kbp5iQzWKbS9aqRi-OMUEwcYf-CFPN5v-EO_lX4_L9Wo', startweight: 68, desiredweight: 55, bio: "Less hakuna matata, more working my core!"},
  {name: "Mrs. Potts", email: 'potts@themakersquare.com', profilepic: 'https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&docid=NRvX21I_5OVVGM&tbnid=iawptBDRMxCC2M:&ved=0CAUQjRw&url=http%3A%2F%2Fdisney.wikia.com%2Fwiki%2FMrs._Potts&ei=Yjq2UuyLHob1oATm8oG4Bg&bvm=bv.58187178,d.cGU&psig=AFQjCNH3sD_k0CrOM8wPdFNHV2o2KhX3nw&ust=1387760594967240', startweight: 3, desiredweight: 2, bio: "Tring to slim down for the holidays."},
  {name: "Jafar", email: 'jafar@themakersquare.com', profilepic: 'http://images3.wikia.nocookie.net/__cb20100311143636/wikidisney/images/d/d4/Jafar.gif', startweight: 126, desiredweight: 0, bio: 'Long-time evil-doer.  Trying to become an all-powerful genie.'}

]

users.each do |user|
  User.create(
    name: user[:name],
    email: user[:email],
    password: 'password',
    profilepic: user[:profilepic],
    startweight: user[:startweight],
    desiredweight: user[:desiredweight],
    bio: user[:bio]
  )
    puts "Created #{User.name}"
end






puts "Created six new users."


Friendship.create(user_id: User.last, friend_id: User.first)
jafar = User.last
jafar.weigh_ins.create(user_id: jafar.id, weightpic:"http://static.comicvine.com/uploads/original/10/109732/2060708-GenieJafar.jpg", currentweight: 50, description: "Almost!")
jafar.weigh_ins.create(user_id: jafar.id, weightpic:"http://static.comicvine.com/uploads/original/10/109732/2060708-GenieJafar.jpg", currentweight: 0, description: "Muwahhahhah!")
jafar.weigh_ins.first.comments.create(user_id: User.first.id, comment: 'Looking great, Jafar!  Way to go!')
jafar.save
puts "Created two WeighIns by Jafar, with one Comment by Ariel.  Jafar and Ariel are now friends."

