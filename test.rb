require 'minitest/autorun'

class ProjectEuler < MiniTest::Test
  def test_0001
    result = %x{ruby p0001.rb}
    assert_equal result.strip.to_i, 233168
  end

  def test_0002
    result = %x{ruby p0002.rb}
    assert_equal result.strip.to_i, 4613732
  end

  def test_0003
    result = %x{ruby p0003.rb}
    assert_equal result.strip.to_i, 6857
  end

  def test_0004
    result = %x{ruby p0004.rb}
    assert_equal result.strip.to_i, 906609
  end
end
