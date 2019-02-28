# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Title.create(:name => '観察日記', :sales_date => '2011-11-14', :price => 1000)

User.create(email: 'admin@com',username: 'tester',admin: 'true', password: 'password')
User.create(email: 'test@com',username: 'tester',admin: 'true', password: 'password')
Category.create(name:"Pain Relief",blurb:"This is a pain relief blurb")
Category.create(name:"Allergy",blurb:"allery blurb should be writte right")
Category.create(name:"Cold / Flu",blurb:"Flu spreads everywhere in Japan")
Category.create(name:"Digestive/GI",blurb:"sometimes it is hard to consume")
Post.create(category_id: 2, title: 'Sample med', active_regular: 'bespoke XOXO slow-carb selvage lumbersexual wayfarers jean shorts irony cardigan fingerstache kombucha.', user_id: 1, image: open("./app/assets/images/sample_med_01.jpg"))
Post.create(category_id: 1, title: 'A + D Ointment', active_regular: 'Lorem ipsum dolor amet twee shabby chic succulents coloring book, hashtag beard chia authentic try-hard retro blog pork belly.', user_id: 1, image: open("./app/assets/images/sample_med_02.jpg"))
Post.create(category_id: 1, title: 'New medicines', active_regular: 'Williamsburg mlkshk flexitarian listicle fam, af marfa unicorn brunch messenger bag. Chia mixtape man bun la croix master cleanse. ', user_id: 2, image: open("./app/assets/images/sample_med_03.jpg"))
Post.create(category_id: 3, title: 'Tablets Bottle', active_regular: 'YOLO mixtape shaman enamel pin biodiesel. Lumbersexual pork belly edison bulb, cloud bread brunch freega', user_id: 2, image: open("./app/assets/images/sample_med_04.jpg"))
Post.create(category_id: 4, title: 'Pressure Hypertension', active_regular: 'Wayfarers truffaut authentic mustache, edison bulb kickstarter semiotics hashtag humblebrag VHS mlkshk 3 wolf moon.', user_id: 1, image: open("./app/assets/images/sample_med_05.jpg"))
Post.create(category_id: 3, title: 'Pressure Hypertension', active_regular: 'Wayfarers truffaut authentic mustache, edison bulb kickstarter semiotics hashtag humblebrag VHS mlkshk 3 wolf moon.', user_id: 1, image: open("./app/assets/images/sample_med_06.jpg"))



# Category.create(name:"Pain Relief",blurb:"This is a pain relief blurb", image: open("./app/assets/images/pain-relief.jpg"))
# Category.create(name:"Allergy",blurb:"allery blurb should be writte right", image: open("./app/assets/images/allergy.jpeg"))
# Category.create(name:"Cold / Flu",blurb:"Flu spreads everywhere in Japan", image: open("./app/assets/images/cold_flu.jpg"))
# Category.create(name:"Digestive/GI",blurb:"sometimes it is hard to consume", image: open("./app/assets/images/digestive.jpg"))