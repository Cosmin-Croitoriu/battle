class Player
    attr_reader :name, :hitpoints
    HITPOINTS = 60
    def initialize(name, hitpoints = HITPOINTS)
       @name = name
       @hitpoints = hitpoints
    end

    
    def attack(player)
       player.receive_damage
    end

    def receive_damage
      @hitpoints -= 10
    end
end