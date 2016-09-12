class NbaTeam < ApplicationRecord

  def mean_score_of_last_five
    @mean_score ||= (scores.inject(:+) * 1.0) / scores.length
  end

end
