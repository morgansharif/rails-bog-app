Creature.delete_all
Creature.create({name: "Yoda", description: "Little green man"})
Creature.create({name: "Luke", description: "Jedi"})
Creature.create({name: "Darth Vader", description: "Father of Luke"})
puts "Success! Created #{Creature.count} entries."
