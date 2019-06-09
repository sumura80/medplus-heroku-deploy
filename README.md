# README
## Application Name: Medplus(Med+) https://medplus.jp/

# Overview
This is the source code of Medplus app.
This app is for informative Japanese OTC medicines. It would be hard to choose medicines in Japan so this service shows categories and medicine details also when you sign in, you could post your view.
You can download and run seed and you can see the app with some data in.

# Function in this app:
## [User]
1. Posting comment in show page. 
2. Changing user own picture/image in account page. 
3. Sign Up / Sign In / Sign Out / Cancel the account.(Devise).
4. LIKE button
5. Vote button (The more vote you get from users, the higher your post goes up)
  
  
## [App]
1. Category page and list all medicines in the category.
2. Pagination in each category page.
3. Image file upload in Amazon S3.(carrierwave)
4. Heroku for deploy.
5. Search function with ransack.
6. logical delete (paranoia)
7. Sending email to users when users sign up/ change password
8. Forget password remake function


# Description
Branch name: medplus-heroku-deploy
Programming languages : Ruby, Ruby on Rails, Boostrap

Used gems:
1. devise
2. carrierwave /mini_magick
3. bootstrap(4.1)
4. figaro
5. ransack
6. will_paginate / will_paginate-bootstrap4
7. fog
8. google-analytics-rails
9. sitemap_generator
10. aws-sdk
11. meta-tags
12. pry-byebug
13. letter_opener_web
14. Brakeman
15. paranoia

Ruby version:2.5.0 /
Ruby on Rails version: 5.1.6 / 
DB:PostgreSQL

