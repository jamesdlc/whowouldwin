class NbaTeamsController < ApplicationController

include NbaTeamsHelper

  def index
    @nbateams = NbaTeam.all
  end

  def show
    @nbateam = NbaTeam.find_by_id(params[:nba_team_id])
    @nbateam2 = NbaTeam.find_by_id(params[:id])
    @comparison = compare(@nbateam2, @nbateam)
  end


  private

    def compare(team1, team2)
      if team1.mean_score_of_last_five > team2.mean_score_of_last_five
        return team1.name + " win. " + team2.name  + " lose. " + "Point differential:  #{ team1.mean_score_of_last_five -  team2.mean_score_of_last_five }"
      end
    end

    def whatever(team1, team2)
      simulation_run_path(team1,team2)
    end

end
