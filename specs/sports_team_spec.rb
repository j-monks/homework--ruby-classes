require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../sports_team.rb')

class TestCodeclanStudents < Minitest::Test


end