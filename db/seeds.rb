require "open-uri"

puts "Cleaning database..."
User.destroy_all



puts "Creating Users..."
#new user
naeul = User.new(email: "naheull@gmail.com", password: "azerty")
naeul.photo.attach(io:File.open('https://res.cloudinary.com/dc9pm7uj8/image/upload/v1587724779/ur7banz6h9d44tn9dnhvqjvuf3cn.png'), filename: 'pierre.jpg', content_type: 'image/jpg')
naeul.save!
