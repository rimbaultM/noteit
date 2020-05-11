require "open-uri"

puts "Cleaning database..."
User.destroy_all
Member.destroy_all
Notegroup.destroy_all
Note.destroy_all

puts "Creating Users...naeul"
naeul = User.new(email: "naheull@gmail.com", password: "azerty", name: "mathieu")
naeul.photo.attach(io:File.open('db/fixtures/users/mathieu.png'), filename: 'mathieu.png', content_type: 'image/png')
naeul.save!
puts "Creating Users...ophe"
ophe = User.new(email: "ophelie@gmail.com", password: "azerty",name: "ophelie")
ophe.photo.attach(io:File.open('db/fixtures/users/ophelie.jpg'), filename: 'ophelie.jpg', content_type: 'image/jpg')
ophe.save!

# joyce = User.new(email: "joyce@gmail.com", password: "azerty",name: "joyce")
# joyce.photo.attach(io:File.open('db/fixtures/users/pierre.jpg'), filename: 'pierre.jpg', content_type: 'image/jpg')
# joyce.save!
# --------------------------------------------------------------------------------------------------------------
# puts "Creating Notegroups..."
# first_notegroup = Notegroup.new(
#   title: "Garance",
#   user: naeul,
#   chef: naeul )
# first_notegroup.save!

# second_notegroup = Notegroup.new(
#   title: "ophtalmo",
#   user: ophe,
#   chef: ophe )
# second_notegroup.save!
# --------------------------------------------------------------------------------------------------------------
# puts "Creating Members..."
# first_member = Member.new(
#   title: "test",
#   user: naeul,
#   status: "accept",
#   notegroup: first_notegroup)
# first_member.save!

# second_member = Member.new(
#   title: "test2",
#   user: ophe,
#   status: "accept",
#   notegroup: first_notegroup)
# second_member.save!

# third_member = Member.new(
#   title: "test3",
#   user: joyce,
#   status: "accept",
#   notegroup: first_notegroup)
# third_member.save!

# fourth_member = Member.new(
#   title: "test4",
#   user: ophe,
#   status: "accept",
#   notegroup: second_notegroup)
# fourth_member.save!

# fifth_member = Member.new(
#   title: "test5",
#   user: naeul,
#   status: "accept",
#   notegroup: second_notegroup)
# fifth_member.save!
# --------------------------------------------------------------------------------------------------------------
# puts "Creating Notes..."
# first_note = Note.new(
#   title: "Pediatre",
#   content: "Prendre rendez-vous pour fin juin",
#   date: "05/05/2020 12:01",
#   notegroup: first_notegroup,
#   user: ophe )
# first_note.save!

# second_note = Note.new(
#   title: "Ophtalmo",
#   content: "Prendre rendez-vous pour Ocotbre",
#   date: "05/05/2020 12:21",
#   notegroup: first_notegroup,
#   user: naeul)
# second_note.save!




# puts "Creating Usergroup..."
# first_group = Usergroup.new(
#   notegroup: first_notegroup
#   )
# first_group.save!

# puts "Creating Notes..."
# first_note = Note.new(
#   title: "Pediatre",
#   content: "Prendre rendez-vous pour fin juin",
#   date: "05/05/2020 12:01",
#   user: naeul,
#   usergroup: first_group,
#   notegroup: first_notegroup)
# first_note.save!

# second_note = Note.new(
#   title: "Ophtalmo",
#   content: "Prendre rendez-vous pour Ocotbre",
#   date: "05/05/2020 12:21",
#   user: naeul,
#   usergroup: first_group,
#   notegroup: first_notegroup)
# second_note.save!


