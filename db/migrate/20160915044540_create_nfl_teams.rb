class CreateNflTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :nfl_teams do |t|
      t.string :name
      t.string :conference
      t.string :division
      t.string :abbreviation
      t.string :img_url
      t.integer :scores, array:true, default: []

      t.timestamps
    end
  end
end
