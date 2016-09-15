class NbaTeamsController < ApplicationController

include AuthHelper

before_action :logged_in?

  def set_first_team
    @nflteams = NflTeam.all
  end

  def set_second_team
    @nflteam = NbaTeam.find_by_id(params[:nfl_team_id])
    @nflteam2 = NbaTeam.find_by_id(params[:id])
    @nflteams = NbaTeam.all
  end

  def result
    @nflteam = NbaTeam.find_by_id(params[:nfl_team_id])
    @nflteam2 = NbaTeam.find_by_id(params[:id])
    @comparison = compare(@nflteam2, @nflteam)
    if @nflteam.id == @nflteam2.id
      flash[:notice] = "You can't pick the #{@nflteam.name} twice."
      redirect_to root_path
    end
  end


  private

    def compare(team1, team2)
      if team1.mean_score_of_last_five > team2.mean_score_of_last_five
        return team1.name + " win. " + team2.name  + " lose. " + "Point differential:  #{ team1.mean_score_of_last_five -  team2.mean_score_of_last_five }"
      else
        return team2.name + " win. " + team1.name  + " lose. " + "Point differential:  #{ team2.mean_score_of_last_five -  team1.mean_score_of_last_five }"
      end
    end

end
