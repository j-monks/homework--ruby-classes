require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../codeclan_students.rb')

class TestCodeclanStudents < Minitest::Test

    def test_get_name
        student = Student.new("James", "E41")

        assert_equal("James", student.name())
    end

    def test_get_cohort
        student = Student.new("James", "E41")

        assert_equal("E41", student.cohort())
    end

    def test_set_name
        student = Student.new("James", "E41")
        student.name = "Kayley"
        assert_equal("Kayley", student.name())
    end

    def test_set_cohort
        student = Student.new("James", "E41")
        student.cohort = "E42"
        assert_equal("E42", student.cohort())
    end

    def test_talk
        student = Student.new("James", "E41")
        
        assert_equal("I can talk!", student.talk())
    end

    def test_say_favourite_language
        student = Student.new("James", "E41")
        
        assert_equal("I love JavaScript", student.say_favourite_language("JavaScript"))
    end
end