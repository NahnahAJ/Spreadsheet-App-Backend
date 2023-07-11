# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# _type: "Duplex", image: "https://images.unsplash.com/photo-1611179836928-5b7c0c4b0b0f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZHVwbGV4JTIwYmFja2dyb3VuZCUyMHBhcGVyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80", price: 100000, category: "Rent", no_of_bedrooms: 4, user_id: 1)
userTwo = User.create(name: "Jane Doe", email: "jdoe@gmail.com", password_digest: "password")
propertyTwo = Property.create(description: "A beautiful house", location: "Lagos", property_type: "Duplex", image: "https://images.unsplash.com/photo-1611179836928-5b7c0c4b0b0f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZHVwbGV4JTIwYmFja2dyb3VuZCUyMHBhcGVyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80", price: 100000, category: "Rent", no_of_bedrooms: 4, user_id: 2)