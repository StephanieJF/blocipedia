require 'faker'

# Create Users
5.times do
  User.create!(
          email: Faker::Internet.email,
          password: Faker::Internet.password
  )
end
users = User.all

# Create Wikis
50.times do
  Wiki.create!(
    user: users.sample,
    title: Faker::Hipster.sentence(3, false, 4),
    body: Faker::Hipster.paragraph(2, false, 4)
  )
end


# Create an admin user
admin = User.create!(
    email:    's.liepper@gmail.com',
    password: 'helloworld',
    role:     'admin'
)

# Create a premium member
premium = User.create!(
    email:    'stephanie408@aol.com',
    password: 'helloworld',
    role: 'premium'
)


puts "Seed finished"
puts "#{User.count} users created."
puts "#{Wiki.count} wikis created."