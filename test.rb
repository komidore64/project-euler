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

  def test_0005
    result = %x{ruby p0005.rb}
    assert_equal result.strip.to_i, 232792560
  end

  def test_0006
    result = %x{ruby p0006.rb}
    assert_equal result.strip.to_i, 25164150
  end

  def test_0007
    result = %x{ruby p0007.rb}
    assert_equal result.strip.to_i, 104743
  end

  def test_0008
    result = %x{ruby p0008.rb}
    assert_equal result.strip.to_i, 23514624000
  end

  def test_0009
    result = %x{ruby p0009.rb}
    assert_equal result.strip.to_i, 31875000
  end

  def test_0010
    result = %x{ruby p0010.rb}
    assert_equal result.strip.to_i, 142913828922
  end

  def test_0011
    result = %x{ruby p0011.rb}
    assert_equal result.strip.to_i, 70600674
  end

  def test_0012
    result = %x{ruby p0012.rb}
    assert_equal result.strip.to_i, 76576500
  end

  def test_0013
    result = %x{ruby p0013.rb}
    assert_equal result.strip.to_i, 5537376230
  end

  def test_0014
    result = %x{ruby p0014.rb}
    assert_equal result.strip.to_i, 837799
  end

  def test_0015
    result = %x{ruby p0015.rb}
    assert_equal result.strip.to_i, 137846528820
  end

  def test_0016
    result = %x{ruby p0016.rb}
    assert_equal result.strip.to_i, 1366
  end

  def test_0017
    result = %x{ruby p0017.rb}
    assert_equal result.strip.to_i, 21124
  end

  def test_0018
    result = %x{ruby p0018.rb}
    assert_equal result.strip.to_i, 1074
  end

  def test_0018_optimized
    result = %x{ruby p0018_optimized.rb}
    assert_equal result.strip.to_i, 1074
  end

  def test_0019
    result = %x{ruby p0019.rb}
    assert_equal result.strip.to_i, 171
  end

  def test_0020
    result = %x{ruby p0020.rb}
    assert_equal result.strip.to_i, 648
  end

  def test_0021
    result = %x{ruby p0021.rb}
    assert_equal result.strip.to_i, 31626
  end

  def test_0022
    result = %x{ruby p0022.rb}
    assert_equal result.strip.to_i, 871198282
  end

  def test_0023
    skip "this one takes over an hour :("
    result = %x{ruby p0023.rb}
    assert_equal result.strip.to_i, 4179871
  end
end
