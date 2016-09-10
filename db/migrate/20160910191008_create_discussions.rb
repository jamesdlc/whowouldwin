class CreateDiscussions < ActiveRecord::Migration[5.0]
  def change
    create_table :discussions do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
