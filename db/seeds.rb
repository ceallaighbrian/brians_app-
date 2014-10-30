User.create!(name:  "Brian Kelly",
             email: "b.kelly27@nuigalway.ie",
             password:              "shorty",
             password_confirmation: "shorty",
             admin: true)


99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end