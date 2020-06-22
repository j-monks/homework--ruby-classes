class Team
    attr_reader :name
    attr_accessor :players, :coach


    def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    end

   def add_player(player)
     @players << player
   end 

   def find_player_by_name(name)
    return @players.any?(name)
   end
end
