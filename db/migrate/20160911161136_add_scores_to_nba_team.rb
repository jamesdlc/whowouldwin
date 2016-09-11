class AddScoresToNbaTeam < ActiveRecord::Migration[5.0]
  def change
    add_column :nba_teams, :scores, :integer, array:true, default: []
  end
end
