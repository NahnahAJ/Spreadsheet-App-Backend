# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create(name: "John Doe", email: "john@example.com", password: "password")
user2 = User.create(name: "Jane Doe", email: "jack@example.com", password: "password")
user3 = User.create(name: "Jack Doe", email: "janew@example.com", password: "password")
user4 = User.create(name: "Jill Doe", email: "joe@example.com", password: "password")