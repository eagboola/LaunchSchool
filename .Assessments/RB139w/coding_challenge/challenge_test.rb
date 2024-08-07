require 'minitest/autorun'
require_relative 'parallax'

class ParallaxTest < Minitest::Test
  def test_parallax_one
    # #skip
    assert_equal "volvolcano", Parallax.shift("volcano", "macroevolutions")
  end

  def test_parallax_two
    #skip
    assert_equal "phapharmacognosyrma", Parallax.shift("pharmacognosy", "pharmacological")
  end

  def test_empty
    #skip
    assert_equal "waterfall", Parallax.shift("waterfall", " ")
  end

  def test_parallax_none
    #skip
    assert_equal "magnificent", Parallax.shift("magnificent", "exquisite")
  end

  def test_parallax_three
    #skip
    assert_equal "icathesympatheticallytic", Parallax.shift("sympathetically", "biomathematical")
  end

  def test_parallax_four
    #skip
    long_string = "xpilifsupercalifragilisticexpialidociousticpia"
    assert_equal long_string, Parallax.shift("supercalifragilisticexpialidocious", "inexpiable lifejackets plasticizing")
  end

  def test_spaces
    #skip
    long_string = "upermapermanent wizard toupeesrd "
    assert_equal long_string, Parallax.shift("permanent wizard toupees", "supercede boxboard formalism")
  end

  def test_duplicate
    #skip
    assert_equal "gdaomigroomingdalesngd", Parallax.shift("groomingdales", "groomingdales")
  end
end