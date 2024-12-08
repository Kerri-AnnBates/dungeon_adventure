class Dungeon
    attr_accessor :player
    
    def initialize(player)
        @player = player
        @rooms = {}
    end
end