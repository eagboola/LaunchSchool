=begin

Write a test suite using Minitest for the `FilmLibrary` class below. 
For now, the test suite should contain one test to verify that a new `FilmLibrary` instance created with a title argument, but no rating argument, will have a default value of 0 for the rating. You can assume that the file will be placed in the same directory as film_library.rb.

=end
require 'minitest/autorun'
require_relative 'film_library.rb'

class FilmLibraryTest < Minitest::Test

  def setup
    @film_lib = FilmLibrary.new("Everything Everywhere")
  end

  def test_made_with_title
    title = @film_lib.title
    rating = @film_lib.rating

    assert(title)
    assert_equal(rating, 0)
  end

end