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

    def test_find_player_by_name_not_found
        team = Team.new("Programmers", ["James", "Kayley", "John", "Adam"], "Bruce")
        assert_equal(false, team.find_player_by_name("Lisa"))
    end

    def skip_test_get_points_points
        team = Team.new("Programmers", ["James", "Kayley", "John", "Adam"], "Bruce")
        assert_equal(0, team.points)
    end

    def skip_test_team_result_win
        team = Team.new("Programmers", ["James", "Kayley", "John", "Adam"], "Bruce")

        assert_equal("Win", team.team_result())
    end

    def test_team_result_win
        team = Team.new("Programmers", ["James", "Kayley", "John", "Adam"], "Bruce")
        team.team_result("Win")
        assert_equal(1, team.points())
    end
        
    def test_team_result_loss
        team = Team.new("Programmers", ["James", "Kayley", "John", "Adam"], "Bruce")
        team.team_result("Loss")
        assert_equal(-1, team.points())
    end
end