require('minitest/autorun')
require('minitest/rg')

require_relative('../team.rb')

class TestTeam < Minitest::Test

  def setup
    @team = Team.new("The Sharks", ["Big Fin", "Little Quack", "Razor Bite"], "Couch Dolphin")
  end

  def test_get_name
    result = @team.team_name
    assert_equal(result, "The Sharks")
  end

  def test_get_players_names
    result = @team.players
    assert_equal(result, ["Big Fin", "Little Quack", "Razor Bite"])
  end

  def test_get_couch
    result = @team.couch
    assert_equal(result, "Couch Dolphin")
  end

  def test_change_couch
    result = @team.change_couch("Couch Carter")
    assert_equal(result, "Couch Carter")
  end

  def test_add_players
    result = @team.add_players("Little Peep")
    assert_equal(["Big Fin", "Little Quack", "Razor Bite", "Little Peep"], result)
  end

  def test_check_if_player_is_in
    result = @team.checked_player("Big Fin")
    assert_equal(result, "Big Fin")
  end

  def test_take_in_score
    result = @team.did_they_win(true)
    assert_equal(result, 1)
  end
end
