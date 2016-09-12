module NbaTeamsHelper
  def get_mean(team)
    (team.scores.inject(:+) * 1.0) / (team.scores.length * 1.0)
  end
end
