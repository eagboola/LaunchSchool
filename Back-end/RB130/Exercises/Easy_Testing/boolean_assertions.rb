require 'minitest/autorun'

class ExerciseTests < Minitest::Test
  def test_first
    value = rand(1..10) 
    assert value.odd?, "value #{value} is not odd"
  end

  def test_case
    value = 'XYZ'

    assert_equal 'xyz', value.downcase, "string is #{value}"
  end

  def test_nil
    value = ['a', 'b', 1, 2, 3, nil]

    assert_nil value
  end

  def test_empty
    value = [[], 0, 1, {}].sample

    assert_empty value
  end

  def test_missing
    list = ['a', 'b', 'c', 'xyz'].shuffle
    list.pop

    assert_includes list, 'xyz'
  end

#   def test_raise_NoExperience
#     assert_raises NoExperienceError { employee.hire }
#   end

  def test_type
    value = [1, 2, 'a', 'b', 'c'].sample

    assert_instance_of Numeric, value
  end

  def test_kind
    value = [1, 2.0, 'a', 'b', 'c', 'd'].sample

    assert_kind_of Numeric, value
  end

  def test_same_object
    list = ('a'..'g').to_a

    assert_same list, list.process
  end

  def test_member_inclusion
    list = ['abc', '123', 'xyz']

    assert_includes list, 'xyz'
  end

end
