# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require minitest

puts "Making some lists..."
List.create(title: "Favorite Games", description: "A list of all my favorite games")
List.create(title: "Favorite Movies", description: "A list of all my favorite movies")
List.create(title: "Today's ToDos", description: "A list of things that I need to do today")
puts "Putting items on each list..."
#put some shit here
puts "Running tests..."
runTests
puts "Done!"

def runTests()
  
end

