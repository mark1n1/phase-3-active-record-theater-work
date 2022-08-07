puts "🌱 Seeding data..."

Role.create(name: 'Hero')
Role.create(name: 'Villain')
Role.create(name: 'Captain')

Audition.create(actor: 'John Doe', location: 'US', phone: 8816836598, hired: false)
Audition.create(actor: 'David Doe', location: 'MEX', phone: 6196553958, hired: false)
Audition.create(actor: 'Alicia Doe', location: 'CAN', phone: 1232091683, hired: false)

puts "🌱 Done seeding!"