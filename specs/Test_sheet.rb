require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class TestSheet < MiniTest::Test

  def setup()
    @river = River.new("Amazon")
    @bear = Bear.new("Yogu", "Grizzly")

  end

  def test_fish_count
    @river.add_fish("fin")
    @river.fish_count
    assert_equal(1, @river.fish_count)
  end

  def test_take_fish
    @river.add_fish("fin")
    @river.add_fish("Flap")
    @river.remove_fish("fin")
    @bear.take_fish("fin")
    assert_equal(1, @river.fish_count)
    assert_equal(1, @bear.stomach_count)
  end
def test_roar
  @bear.roar
  assert_equal("roar", @bear.roar)
end
def test_food_count
  @river.add_fish("Jim")
  @bear.take_fish("Jim")
  @bear.stomach_count
  assert_equal(1, @bear.stomach_count)
end

def test_river_pop
  @river.add_fish("Ian")
  @river.add_fish("Del")
  @river.add_fish("Tam")
  @river.add_fish("Cathy")
  @river.fish_count
  assert_equal(4, @river.fish_count)
end

end
