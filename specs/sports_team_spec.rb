require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../sports_team.rb')

class TestCodeclanStudents < Minitest::Test

    def test_get_team_name
        team = Team.new("Programmers", ["James", "Kayley", "John", "Adam"], "Bruce")

        assert_equal("Programmers", team.name)
    end

    def test_get_team_players
        team = Team.new("Programmers", ["James", "Kayley", "John", "Adam"], "Bruce")

        assert_equal(["James", "Kayley", "John", "Adam"], team.players)
    end

    def test_get_team_coach
        team = Team.new("Programmers", ["James", "Kayley", "John", "Adam"], "Bruce")

        assert_equal("Bruce", team.coach)
    end

    def test_set_coach_name
        team = Team.new("Programmers", ["James", "Kayley", "John", "Adam"], "Bruce")
        team.coach = "Kim" 
        assert_equal("Kim", team.coach)
    end

    def test_add_player
        team = Team.new("Programmers", ["James", "Kayley", "John", "Adam"], "Bruce")
        team.add_player("Calvin")
        assert_equal(["James", "Kayley", "John", "Adam", "Calvin"], team.players)
    end

    def test_find_player_by_name_found
        team = Team.new("Programmers", ["James", "Kayley", "John", "Adam"], "Bruce")
        assert_equal(true, team.find_player_by_name("James"))
    end
end