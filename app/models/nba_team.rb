class NbaTeam < ApplicationRecord

  def mean_score_of_last_five
    @mean_score_of_last_five ||= (scores.inject(:+) ) / scores.length
  end

end
