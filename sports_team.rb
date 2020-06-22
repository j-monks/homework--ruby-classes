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
        if (@players.find { |player| player = @players } != nil)
            return true
            else
            return false
        end
   end
end
