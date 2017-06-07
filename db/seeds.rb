# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Token.destroy_all
Token.create(value: SecureRandom.hex(32))

Quote.destroy_all
100.times do
  Quote.create({
    character: Faker::LordOfTheRings.character,
    quote:     Faker::HarryPotter.quote,
    location:  Faker::LordOfTheRings.location,
    witness:   Faker::HarryPotter.character
  })
end
