class NbaTeamsController < ApplicationController
include NbaTeamsHelper
  def index
    @nbateams = NbaTeam.all
  end

  def show
    @nbateam = NbaTeam.find_by_id(params[:nba_team_id])
    @result = determine_winner(@nbateam)
    @nbateam2 = NbaTeam.find_by_id(params[:id])
    @result2 = determine_winner(@nbateam2)
  end


  private

    def determine_winner(team1)
      get_mean(team1)
    end

end
