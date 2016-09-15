class NbaTeamsController < ApplicationController

include AuthHelper

before_action :logged_in?

  def set_first_team
    @nbateams = NbaTeam.all
  end

  def set_second_team
    @nbateam = NbaTeam.find_by_id(params[:nba_team_id])
    @nbateam2 = NbaTeam.find_by_id(params[:id])
    @nbateams = NbaTeam.all
  end

  def result
    @nbateam = NbaTeam.find_by_id(params[:nba_team_id])
    @nbateam2 = NbaTeam.find_by_id(params[:id])
    @comparison = compare(@nbateam2, @nbateam)
    if @nbateam.id == @nbateam2.id
      flash[:notice] = "You can't pick the #{@nbateam.name} twice."
      redirect_to set_second_team_path
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
