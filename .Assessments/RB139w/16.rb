=begin

Write another test to verify that an ArgumentError exception is raised if an instance of the FilmLibrary class is initialized without a value for the title instance variable.

=end


require 'minitest/autorun'
require_relative 'film_library.rb'

class FilmLibraryTest < Minitest::Test

  def test_raise_improper_initialization
    assert_raises(ArgumentError) do 
      FilmLibrary.new
    end
  end

end