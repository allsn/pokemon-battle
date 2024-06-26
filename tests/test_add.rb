require "minitest/autorun"
require "./menu"

class TestPokeapp < Minitest::Test
  def test_add
    new_menu = Menu.new

    $stdin = StringIO.new("Pikachu\nElectric\nJolt\n")
    new_menu.add("Pikachu", "Electric", "Jolt")

    assert_equal true, @pokemons.empty?, "Pokemon was not added"

    #    new_menu.add("Pikachu","Electric", "Jolt")
    #    assert_equal false, @pokemons.empty?, "Pokemon was not added"
  end
end
