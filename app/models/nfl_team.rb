class NflTeam < ApplicationRecord
  
  def mean_score_of_last_five
    @mean_score_of_last_five ||= (scores.inject(:+) * 1.0) / scores.length
  end

end
