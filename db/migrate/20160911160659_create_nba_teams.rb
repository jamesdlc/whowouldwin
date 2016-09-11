class CreateNbaTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :nba_teams do |t|
      t.string :name
      t.string :conference
      t.string :division

      t.timestamps
    end
  end
end
