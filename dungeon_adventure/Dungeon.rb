class Dungeon
    attr_accessor :player
    
    def initialize(player)
        @player = player
        @rooms = {}
    end

    def add_room(reference, name,description, connection)
        @rooms[reference] = Room.new(reference, name, description, connection)
    end
end