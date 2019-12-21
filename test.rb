require 'minitest/autorun'

class ProjectEuler < MiniTest::Test
  def test_problem_0001
    result = %x{ruby p0001.rb}
    assert_equal result.strip.to_i, 233168
  end
end
