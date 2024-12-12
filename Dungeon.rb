require_relative 'Room'

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

    def find_room_in_direction(direction)
        find_room_in_dungeon(@player.location).connections[direction]
    end

    def go(direction)
        if @rooms[direction] != nil
            puts "You go " + direction.to_s
            @player.location = find_room_in_direction(direction)
            show_current_description
        else
            puts @rooms[direction]
            puts "There is no room " + direction.to_s
        end
    end
end