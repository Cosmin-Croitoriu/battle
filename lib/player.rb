class Player
    attr_reader :name, :hitpoints
    HITPOINTS = 60
    def initialize(name, hitpoints = HITPOINTS)
       @name = name
       @hitpoints = hitpoints
    end

    def receive_damage
      @hitpoints -= 10
    end
end
    