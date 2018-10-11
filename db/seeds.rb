# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Event.destroy_all
UserEvent.destroy_all

u1 = User.create(name: "Scarlett", username: "scarpy", password: "123")
e1 = Event.create(exhibition_name: "New Art City")

UserEvent.create(user_id: u1.id, event_id: e1.id)
