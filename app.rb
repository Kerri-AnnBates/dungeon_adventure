require_relative 'Player'
require_relative 'Dungeon'

me = Player.new("Frodo Baggins")
dungeon = Dungeon.new(me)
puts dungeon.player.name

dungeon.add_room(
  :largecave,
  "Large Cave",
  "a large cavernous cave",
  { :west => :smallcave })

dungeon.add_room(
  :smallcave,
  "Small Cave",
  "a small, claustrophobic cave",
  { :east => :largecave })

# Start the dungeon by placing the player in the large cave
dungeon.start(:largecave)
dungeon.find_room_in_direction(:largecave)
dungeon.go(:west)
dungeon.go(:south)