require "open-uri"

puts "Cleaning database..."
User.destroy_all
Notegroup.destroy_all
Note.destroy_all



puts "Creating Users..."
#new user
naeul = User.new(email: "naheull@gmail.com", password: "azerty", name:"matt")
naeul.photo.attach(io:File.open('db/fixtures/users/mathieu.png'), filename: 'mathieu.png', content_type: 'image/png')
naeul.save!

ophe = User.new(email: "ophelie@gmail.com", password: "azerty", name:"ophé")
ophe.photo.attach(io:File.open('db/fixtures/users/ophelie.jpg'), filename: 'ophelie.jpg', content_type: 'image/jpg')
ophe.save!


puts "Creating Notegroups..."
first_notegroup = Notegroup.new(
  title: "Garance",
  user: naeul )
first_notegroup.save


puts "Creating Notes..."
first_note = Note.new(
  title: "Pediatre",
  content: "Prendre rendez-vous pour fin juin",
  date: "05/05/2020 12:01",
  user: naeul,
  notegroup: first_notegroup )
first_note.save!

second_note = Note.new(
  title: "Ophtalmo",
  content: "Prendre rendez-vous pour Ocotbre",
  date: "05/05/2020 12:21",
  user: naeul,
  notegroup: first_notegroup )
second_note.save!
