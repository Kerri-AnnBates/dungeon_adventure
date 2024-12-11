class Dungeon
    attr_accessor :player
    
    def initialize(player)
        @player = player
        @rooms = {}
    end

    def start(location)
        @player.location = location
        show_current_description
    end

    def add_room(reference, name,description, connection)
        @rooms[reference] = Room.new(reference, name, description, connection)
    end

    def show_current_description
        puts find_room_in_dungeon(@player.location).full_description
    end

    def find_room_in_dungeon(reference)
        @rooms[reference]
    end
end