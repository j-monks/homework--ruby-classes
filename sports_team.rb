class Team
    attr_reader :name
    attr_accessor :players, :coach


    def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    end
end