class NbaTeamsController < ApplicationController

include NbaTeamsHelper

  def index
    @nbateams = NbaTeam.all
  end

  def show_first
    @nbateam = NbaTeam.find_by_id(params[:nba_team_id])
    @nbateam2 = NbaTeam.find_by_id(params[:id])
    @nbateams = NbaTeam.all

    # @comparison = compare(@nbateam2, @nbateam)
  end

  def show_second
    @nbateams = NbaTeam.all
    @nbateam = NbaTeam.find_by_id(params[:nba_team_id])

  end

  def result
    @nbateam = NbaTeam.find_by_id(params[:nba_team_id])
    @nbateam2 = NbaTeam.find_by_id(params[:id])
    if @nbateam.id == @nbateam2.id
      flash[:notice] = "You can't pick the same team twice"
      redirect_to set_second_team_path
    end
  end


  private

    def compare(team1, team2)
      if team1.mean_score_of_last_five > team2.mean_score_of_last_five
        return team1.name + " win. " + team2.name  + " lose. " + "Point differential:  #{ team1.mean_score_of_last_five -  team2.mean_score_of_last_five }"
      end
    end



end
