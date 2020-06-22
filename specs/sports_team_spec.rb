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
        team.set_coach_name("Kim")
        assert_equal("Kim", team.coach)
    end
end