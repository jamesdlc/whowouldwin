class AddImgToNbaTeams < ActiveRecord::Migration[5.0]
  def change
    add_column :nba_teams, :img_url, :string
  end
end
