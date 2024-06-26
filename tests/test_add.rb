require "minitest/autorun"
require "./menu"

class TestPokeapp < Minitest::Test
  def test_add
    new_menu = Menu.new
    $stdin = StringIO.new("Pikachu\nElectric\nJolt\n")
    new_menu.add_poke
    assert_equal 1, new_menu.pokemons.size, "Pokemon was not added"
  end
end
