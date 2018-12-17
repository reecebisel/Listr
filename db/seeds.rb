
uts "Making some lists..."
games = List.create(title: "Favorite Games", description: "A list of all my favorite games")
movies = List.create(title: "Favorite Movies", description: "A list of all my favorite movies")
todo = List.create(title: "Today's ToDos", description: "A list of things that I need to do today")
puts "Putting items on each list..."
games.list_items.create(description: 'Portal 2')
games.list_items.create(description: 'Quake 3 Arena')
games.list_items.create(description: 'Unreal Tournament 99')
games.list_items.create(description: 'R6: Siege')
games.list_items.create(description: 'Destiny 2')
games.list_items.create(description: 'Oblivion')
games.list_items.create(description: 'Fallout: New Vegas')

movies.list_items.create(description: 'Zootopia')
movies.list_items.create(description: 'Sahara')
movies.list_items.create(description: 'Jin-Roh: The Wolf Brigade')
movies.list_items.create(description: 'Demolition Man')

todo.list_items.create(description: 'Finish Evaluation')
todo.list_items.create(description: 'Take Nap')
todo.list_items.create(description: 'Finish 3D printer modifications')
todo.list_items.create(description: 'Do Laundry')
#Yes those are all factual!
puts "Done!"

