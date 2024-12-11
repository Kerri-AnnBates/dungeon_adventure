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