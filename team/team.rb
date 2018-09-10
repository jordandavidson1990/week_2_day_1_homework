# Make a class to represent a Team that has the properties Team name (String),
# Players (array of strings) and a Coach (String).
# For each property in the class make a getter method than can return them.
# Create a setter method to allow the coach's name to be updated.
# Refactor the class to use attr_reader or attr_accessor instead of your own
# getter and setter methods.
# Create a method that adds a new player to the players array.
# Add a method that takes in a string of a player's name and checks to see if
# they are in the players array.

# //
# Add a points property into your class that starts at 0.
# Create a method that takes in whether the team has won or lost and updates
# the points property for a win.
class Team
  attr_reader :team_name, :players
  attr_accessor :couch

  def initialize(team_name, players, couch)
    @points = 0
    @team_name = team_name
    @players = players
    @couch = couch
  end

  # def get_team_name
  #   return @team_name
  # end
  #
  # def get_players
  #   return @players
  # end
  #
  # def get_couch
  #   return @couch
  # end

  def change_couch(new_couch)
    @couch = new_couch
  end

  def add_players(new_player)
    @players.push(new_player)
  end

  def checked_player(player_to_check)
    for player in @players
      if player == player_to_check
        return player
      end
    end
  end
  # Create a method that takes in whether the team has won or lost and updates
  # the points property for a win.

  def did_they_win(result)
    # has team won
    if result == true
      @points +=1  
    end
  end
end
