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
  attr_accessor :coach

  def initialize(team_name, players, coach)             #Team.new is whats being initialized. So its being expected 3 functions**
    @points = 0           # already got a value, so doesnt need an arguement passed in
    @team_name = team_name              # @ means available everywhere
    @players = players
    @coach = coach
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

  def change_coach(new_coach)       # setter always takes in an arguement
    @coach = new_coach
  end

  def add_players(new_player)
    @players.push(new_player)
  end

  def checked_player(player_to_check)
    for player in @players              # loop
      if player == player_to_check      # if
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
