class Team
    attr_reader :name
    attr_accessor :players, :coach, :points


    def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
    end

   def add_player(player)
     @players << player
   end 

   def find_player_by_name(name)
    return @players.any?(name)
   end

   def team_result(result)
    if (result == "Win")
        @points += 1
    elsif (result == "Loss")
        @points -= 1
   end
end

end
