require "minitest/autorun"
require "./menu"

class TestPokeapp < Minitest::Test


  def test_add
    new_menu = Menu.new
    new_menu.add("Pikachu", "Electric", "Jolt")
    assert_equal 1, new_menu.pokemons.empty?, "Pokemon was not added"
  end
end
