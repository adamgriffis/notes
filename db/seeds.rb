# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Note.destroy_all

10.times do |i|
  title = Faker::Hipster.word
  description = Faker::Hipster.sentence(8)

  note = Note.new(title:        title,
                  description:  description
                  )
  note.save
end

p "Created #{Note.count} notes"
