# ユーザー
User.create!(name:  "Kazuki Imamaki",
             email: "elm.fb.gradual@gmail.com",
             password:              "0308Kiri",
             password_confirmation: "0308Kiri",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)

5.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end



