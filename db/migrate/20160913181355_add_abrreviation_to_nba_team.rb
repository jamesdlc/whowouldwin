class AddAbrreviationToNbaTeam < ActiveRecord::Migration[5.0]
  def change
    add_column :nba_teams, :abbreviation, :string

  end
end
