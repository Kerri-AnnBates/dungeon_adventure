class Room
    attr_accessor :reference, :name, :description, :connection

    def initialize(reference, name, description, connection)
        @reference = reference
        @name = name
        @description = description
        @connection = connection
    end

    def full_description
        @name + "\n\nYou are in " + @description
    end
end