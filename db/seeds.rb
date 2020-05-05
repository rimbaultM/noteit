require "open-uri"

puts "Cleaning database..."
User.destroy_all
Note.destroy_all



puts "Creating Users..."
#new user
naeul = User.new(email: "naheull@gmail.com", password: "azerty", name:"matt")
naeul.photo.attach(io:File.open('db/fixtures/users/mathieu.png'), filename: 'mathieu.png', content_type: 'image/png')
naeul.save!


puts "Creating Notes..."

first_note = Note.new(
  title: "Pediatre Garance",
  content: "Prendre rendez-vous pour fin juin",
  date: "05/05/2020 12:01",
  user: naeul)
first_note.save!

second_note = Note.new(
  title: "Ophtalmo Garance",
  content: "Prendre rendez-vous pour Ocotbre",
  date: "05/05/2020 12:21",
  user: naeul)
second_note.save!
