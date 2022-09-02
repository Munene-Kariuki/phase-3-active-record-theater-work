puts "🌱 Seeding data..."

# Audition.destroy_all
# Audition.reset_pk_sequence
# Role.destroy_all
# Role.reset_pk_sequence


#create roles
Role.create(character_name: "Oj")
Role.create(character_name: "Freddie")
Role.create(character_name: "Tanya")

#Create auditions
Audition.create(actor: "Denis", location: "Nairobi", phone: +254700142244, hired: false, role_id: 2)
Audition.create(actor: "Brian", location: "Nairobi", phone: +254707012222, hired: false, role_id: 1)
Audition.create(actor: "Denis", location: "Nairobi", phone: +254112522565, hired: false, role_id: 1)
Audition.create(actor: "Domi", location: "Nairobi", phone: +254712355825, hired: false, role_id: 2)
Audition.create(actor: "Ivy", location: "Nairobi", phone: +254791573314, hired: false, role_id: 3)
Audition.create(actor: "Mukami", location: "Nairobi", phone: +254756225266, hired: false, role_id: 3)

puts "🌱 Done seeding!"