require('minitest/autorun')
require('minitest/pride')

require_relative('../team.rb')    # .. means level above

class TestTeam < Minitest::Test

  def setup     # creates a instance of team to be used in every test
    @team = Team.new("The Sharks", ["Big Fin", "Little Quack", "Razor Bite"], "Couch Dolphin")  #**
    # players = ["Big Fin", "Little Quack", "Razor Bite"]
  end

  def test_get_name
    result = @team.team_name
    assert_equal(result, "The Sharks")
    #assert_equal(@team.team_name, "The Sharks")
  end

  def test_get_players_names
    result = @team.players().count
    assert_equal(result, 3)#["Big Fin", "Little Quack", "Razor Bite"])
  end

  def test_get_coach
    result = @team.coach
    assert_equal(result, "Couch Dolphin")
  end

  def test_change_couch
    result = @team.change_coach("Coach Carter")
    assert_equal(result, "Coach Carter")
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
